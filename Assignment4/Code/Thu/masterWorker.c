#include<stdio.h>   // printf()
#include<stdlib.h>   // atoi()
#include<omp.h>     // OpenMP
int main(int argc, char**argv) {
	printf("\n");
	if(argc >1) {
		omp_set_num_threads( atoi(argv[1]) );
	}
<<<<<<< HEAD
    #pragma omp parallel 
=======
//    #pragma omp parallel 
>>>>>>> 106f6a98122824b173815f388b0b44ae2009c75a
{
	int id =omp_get_thread_num();
	int numThreads =omp_get_num_threads();

	if( id ==0) {  //thread with ID 0 is master
		printf("Greetings from the master, # %d of %d threads\n",id, numThreads);
	} else{          // threads with IDs > 0 are workers 
		printf("Greetings from a worker, # %d of %d threads\n",id, numThreads);
	}
}
printf("\n");
<<<<<<< HEAD
return 0;}
=======
return 0;}
>>>>>>> 106f6a98122824b173815f388b0b44ae2009c75a
