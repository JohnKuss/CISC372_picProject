
image:image.c image.h
	gcc -g image.c -o image -lm
clean:
	rm -f image output.png image_pthread image_openmp
image_pthread: image_pthread.c image_pthread.h
	gcc -g image_pthread.c -o image_pthread -lpthread -lm
image_openmp: image_openmp.c image.h
	gcc -g -Wall -fopenmp -o image_openmp image_openmp.c -lm
