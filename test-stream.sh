#!/bin/bash

#export OMP_NUM_THREADS=1
#./stream

#export OMP_NUM_THREADS=128
#./stream

stream_mp_test () {
	export OMP_NUM_THREADS=1
	export GOMP_CPU_AFFINITY=0
	./stream


	export OMP_NUM_THREADS=128
	export GOMP_CPU_AFFINITY=0-127
	./stream
}

for i in 1 2 3 4 5; do
	stream_mp_test
	sleep 5
done 