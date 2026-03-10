#include "laser.h"
#include "dma/dma.h"
#include "images/checkerboard.h"
#include "images/convallaria.h"
#include "images/barcode.h"
#include "images/barcode_512.h"
#include "images/convallaria_512.h"

int frame_done = 0;

//extern const uint32_t binary_data[];
//extern const uint32_t binary_data_size;

/*
 *
 *
 *
const uint32_t binary_data[] = {
    0x0000001F, 0x00000000, 0x0000001F, 0x00000000,
    // Add all your 32-bit words here
};

const size_t binary_data_size = sizeof(binary_data) / sizeof(binary_data[0]);

*/

//const uint32_t binary_data_size = 5;

int prepare_laser_emulator() {
	uint32_t* binary_data;
	if (IMAGE == "CHECKERBOARD"){
		binary_data = &checkerboard;
	} else if (IMAGE == "CONVALLARIA"){
		binary_data = &convallaria;
	} else if (IMAGE == "BARCODE"){
			binary_data = &barcode;
	}else if (IMAGE == "BARCODE_512"){
			binary_data = &barcode_512;
	}else if (IMAGE == "CONVALLARIA_512"){
		binary_data = &convallaria_512;
}

	if((NUM_PIXELS)>pow(2,18)){
		xil_printf("warning: %d pixels cannot be put into laser emulators BRAM, the BRAM will wraparound.\n\r", NUM_PIXELS);
	}


    // Read and write 32-bit words
    void *bram_ptr = BRAM_BASE_ADDR;
    uint32_t word;
    int words_written = 0;
    int bram_addr = -1;
    int pixel;
    //while (fread(&word, sizeof(uint32_t), 1, file) == 1) {
    for (int i = 0; i<(ORIGINAL_NUM_PIXELS/4); i++){
    	if(i>=MAX_PIXELS_IN_BRAM/4){
    		//xil_printf("thats more pixels than fit in the emulators BRAM. BRAM_Wraparound will have to cover it\n\r");
    		break;
    	}
    	if(FRAME_WIDTH < ORIGINAL_FRAME_WIDTH){
    		if(((i%ORIGINAL_FRAME_WIDTH)<FRAME_WIDTH)&i<(FRAME_WIDTH*ORIGINAL_FRAME_WIDTH)){
    			pixel = i*4;
    			bram_addr +=1;
    		} else {
    			continue;
    		}
    	}else{
    		pixel = i*4;
			bram_addr +=1;

    	}

    	word = (binary_data[pixel+3]<<24)|(binary_data[pixel+2]<<16)|(binary_data[pixel+1]<<8)|binary_data[pixel];
    	uint32_t bram_ptr_neu = (uint32_t*)(bram_ptr + bram_addr*4);
        Xil_Out32(bram_ptr_neu, word);
        //xil_printf("%d\n\r", i);
        words_written++;
    }

    //int debug_variable = Xil_In32(bram_ptr);
    //int debug_variable2 = Xil_In32(bram_ptr+4);

    bram_addr =-1;
    for (int i = 0; i<(ORIGINAL_NUM_PIXELS/4); i++){
    	if(i>=MAX_PIXELS_IN_BRAM/4){
    		break;
    	}
    	if(FRAME_WIDTH < ORIGINAL_FRAME_WIDTH){
    		if(((i%ORIGINAL_FRAME_WIDTH)<FRAME_WIDTH)&i<(FRAME_WIDTH*ORIGINAL_FRAME_WIDTH)){
    			pixel = i*4;
    			bram_addr +=1;
    		} else {
    			continue;
    		}
    	}else{
    		pixel = i*4;
			bram_addr +=1;

    	}

    	word = (binary_data[pixel+3]<<24)|(binary_data[pixel+2]<<16)|(binary_data[pixel+1]<<8)|binary_data[pixel];

    	//word = binary_data[pixel];
    	uint32_t bram_ptr_neu = (uint32_t*)(bram_ptr + bram_addr*4);

    	uint32_t read_word = Xil_In32(bram_ptr_neu);
        if(read_word != word){
        	xil_printf("read back %x from pixel %u, expected %x.\n\r", read_word, i, word);
        }
    }

    //fclose(file);
    xil_printf("Successfully wrote %u words to BRAM\n\r", (words_written));
    return 0;
}

void FrameIntrHandler(){
	//frame_done = 1;
	//sleep(1);
	RxDone = 1;  //means that a whole frame has been trasnferred to DDR memory now
}


int laserInit()
{
	/*
	for (int i = 0; i < 18; i++) {  // bram size in the laser emulator is limited: if too large an image is requested, just repeat the pixels
	    if (BRAM_WRAPAROUND & (1 << i)) {
	        axiGpOutSet(BRAM_WRAPAROUND0 + i);
	    }
	}
	*/
	for (int i = 0; i <= 31; i++) {  // how many pulses per pixel are shot? not used at the moment
	    if (PULSES_PER_PIXEL & (1 << i)) {
	        axiGpOutSet(PULSES_PER_PIXEL0 + i);
	    }
	}
	for (int i = 0; i <= 31; i++) {  // how many bins from the histogram will we actually read? we might fill more bins by mistake (this should trigger a warning)
	    if (FRAME_WIDTH & (1 << i)) {
	        axiGpOutSet(IMAGE_SIZE0 + i);
	    }
	}
	int status=XST_SUCCESS;
	return status;
}
