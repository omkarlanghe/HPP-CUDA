#include <stdio.h>

__global__ void helloFromGPU(void) {
	printf("Buzingga! This function is running on GPU\n");
}

int main(void) {
	printf("My first CUDA code which will run on GPU\n");
	helloFromGPU <<<1, 10>>>();
	cudaDeviceReset();
	return(0);
}
