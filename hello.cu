#include <stdio.h>
#include "cuda_runtime.h"

//Kernel
__global__
void hello_world(void){
	printf("hello\n");
}


int main(){
	printf("Chamando hello!\n");
	hello_world << <3, 10>> >();
	cudaDeviceSynchronize();
	return 0;
}
