#!/bin/bash

stream_mp_test_1c () {
	export OMP_NUM_THREADS=1
	export GOMP_CPU_AFFINITY=0
	./stream
}

stream_mp_test_128c () {
	export OMP_NUM_THREADS=128
	export GOMP_CPU_AFFINITY=0-127
	./stream
}

# always enable thp
echo always > /sys/kernel/mm/transparent_hugepage/enabled
echo always > /sys/kernel/mm/transparent_hugepage/defrag

for i in 1 2 3 4 5; do
	stream_mp_test_1c
	sleep 5
	stream_mp_test_128c
	sleep 5
done 
