#include <stdio.h>

//Kernel
__global__
void hello_world(void){
	printf("hello");
}


int main(){
	hello_world<<<1, 1>>>();
	return 0;
}
