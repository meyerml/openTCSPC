
/*****************************************************************************/
/***************************** Include Files *********************************/
/*****************************************************************************/

#include "global_defines.h"
#include "dma/dma.h"
#include <math.h>
#include "report.h"
#include "gpx2/gpx2_if.h"





uint64_t create_upper_bits_selection_mask(int X, int Y) {
    if (X == 0) {
        return 0;
    } else if (X >= 64) {
        return UINT64_MAX; // All bits set to 1
    } else {
        return (create_lower_bits_selection_mask(X+Y) &~create_lower_bits_selection_mask(Y));//set a long train of ones, the cut the tail of the train again.
    }
}

uint64_t create_lower_bits_selection_mask(int X) {
    if (X == 0) {
        return 0;
    } else if (X >= 64) {
        return UINT64_MAX; // All bits set to 1
    } else {
        return (UINT64_MAX >> (64 - X));
    }
}
double calculateMean(uint32_t* data, int n) {
    long long unsigned int sum = 0;
    for (int i = 0; i < n; i++) {
    	uint32_t addition = data[i];
        sum += addition;
    }
    double dsum = (double)sum;
    double mean = dsum/n;
    return mean; // Convert sum to float for division
}

double calculateStdDev(uint32_t data[], int n, double mean) {
	long double sum = 0.0;
    for (int i = 0; i < n; i++) {
    	long double value = (long double)data[i]; // Convert uint8_t to float
        sum += powf(value - mean, 2);
    }
    return sqrtf(sum / n);
}



int ReportHistPerPixel(const u8 *global_destination, u32 num_pixels, u32 num_bins_per_hist){

	u8* buffer_address = global_destination;
	for (int pixel = 0; pixel<num_pixels; pixel++){
		ReportHist(pixel, buffer_address, num_bins_per_hist);
		buffer_address += (HISTOGRAM_BINS *2) + 8; //8 bytes of start signal
	}
	return 0;
}


int ReportHist(int pixel, void* BufferAddress, int bins_per_hist){
	// write index of pixel
	//xil_printf("\n\r");
	xil_printf("B %d\n\r", pixel);
	//write pixel histogram
	u32 pixel_from_startsignal = *(u32*) BufferAddress;
	//u16 count;
	BufferAddress += 8;  //skip start signal
	if(pixel_from_startsignal != pixel){
		xil_printf("this is not the pixel we have been expecting.\n\r");
		while(1);
	}
	for (int t = 0; t<bins_per_hist/4; t++) { //iterate over axi transactions of 64 bits = 4 bins
		xil_printf("%d_", *(u16*)(BufferAddress+6));
		xil_printf("%d_", *(u16*)(BufferAddress+4));
		xil_printf("%d_", *(u16*)(BufferAddress+2));
		xil_printf("%d\n\r", *(u16*)(BufferAddress));
		BufferAddress += 8; //go to next transaction
	}

	//write end of pixel
	xil_printf("E %d\n\r", pixel);
	return 1;
}

//hist_bin_with

/*
int ReportHistPerPixel(const u8 *global_destination, u32 num_pixels, u32 num_bins_per_hist){
	//create masks for selecting the stopresult bits and the refindex bits
	uint64_t refindex_mask = create_upper_bits_selection_mask(REF_INDEX_BITWIDTH, STOP_DATA_BITWIDTH);
	uint64_t stopresult_mask = create_lower_bits_selection_mask(STOP_DATA_BITWIDTH);
	int photon_count = 0;

	//calculate the laser pulse indices of the pixels, starting at pulse 1:


	//get the first refindex
	//u64 conversion_result = *global_destination;
	//u32 first_refindex = (conversion_result & refindex_mask)>>STOP_DATA_BITWIDTH;
	//u32 pixel = 0;

	u32 max_time = 1000000000/REFCLK_FREQUENCY;  //time between laser pulses in ps

	increment = max_time / bins_per_histogram;

	u32 bin_limits[bins_per_histogram+1];
	for(int i = 0; i<=bins_per_histogram; i++){
		bin_limits[i] = i*increment;
	}



	u32 bins_per_histogram = ceil(max_time / hist_bin_width);

	u32 hist[bins_per_histogram];


	u64* photon_pointer= (u64*) global_destination;
	u32 refindex;
	u32 first_refindex_of_next_pixel;
	u32 bin_index_of_hist;
	//u32 last_possible_refindex_of_image = refindex + pixels_in_total*pulses_per_pixel;

	refindex = ((*photon_pointer)&refindex_mask)>>STOP_DATA_BITWIDTH;

	for(int pixel = 0; pixel < pixels_in_total; pixel++){
		clear_hist(hist, bins_per_histogram);

		//for(u64 * photon_pointer_in_pixel = photon_pointer;  //start at the first detected photon
		//		((*photon_pointer_in_pixel&refindex_mask)>>STOP_DATA_BITWIDTH)<first_refindex+(pixel+1)*pulses_per_pixel;  //is the photon still in this pixel?
		//		photon_pointer_in_pixel++){  //go to next photon

		//u64* photon_pointer_in_pixel = photon_pointer;
		first_refindex_of_next_pixel = refindex + pulses_per_pixel;
		while (refindex < first_refindex_of_next_pixel){
			// add photon to the correct bin
			u64 conversion_result = *photon_pointer;
			//u32 refindex = (conversion_result & refindex_mask)>>STOP_DATA_BITWIDTH;
			u32 stopresult = conversion_result & stopresult_mask;

			bin_index_of_hist = get_bin_index_division(stopresult, hist_bin_width);
			//bin_index_of_hist = get_bin_index_inverse_multiply(stopresult, hist_bin_with);
			//bin_index_of_hist = get_bin_index_binary_search(stopresult, hist_bin_with);
			//bin_index_of_hist = floor(stopresult/hist_bin_width); //if hist_bin_width is a power of 2, this division is much much faster!
			hist[bin_index_of_hist]++;
			photon_pointer++;
			photon_count++;
			refindex = ((*photon_pointer)&refindex_mask)>>STOP_DATA_BITWIDTH;

			if(photon_count == NUMSAMPLES){
				break;
			}
		}
	//write out the pixels histogram:
		Xil_DCacheFlushRange((UINTPTR)hist, bins_per_histogram * 4);

		xil_printf("histogram of pixel %d \r\n", pixel);
	for (int bin = 0; bin < bins_per_histogram; bin++){
		xil_printf("%d ", hist[bin]);
	}
	xil_printf("\r\n");

	//go to next pixel
	}

	xil_printf("\r\nDone.\r\n");


	return XST_SUCCESS;

}

int get_bin_index_division(u32 stopresult, u32 hist_bin_width){  //maybe define as inline function?
			return floor(stopresult/hist_bin_width); //if hist_bin_width is a power of 2, this division is much much faster!
}


int get_bin_index_inverse_multiply(u32 stopresult, float inv_hist_bin_width){  //maybe define as inline function?
			return floor(stopresult* inv_hist_bin_width); //if hist_bin_width is a power of 2, this division is much much faster!
}


int get_bin_index_binary_search(u32 stopresult, u32 hist_bin_with){  //maybe define as inline function?
	//TODO: impelement with the precalculated limits
			return 1;
}
void clear_hist(u32* pointer, u32 length_of_hist){
	for (int i = 0; i < length_of_hist; i++) {
	    pointer[i] = 0;
	}
}
*/
