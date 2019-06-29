#!/bin/bash

build_stream() {
	gcc -O3 -fopenmp -DSTREAM_ARRAY_SIZE=80000000 -DNTIMES=10 stream.c -o stream

	#yum install -y glibc-static.aarch64
	#gcc -O3 -fopenmp -DSTREAM_ARRAY_SIZE=80000000 -DNTIMES=10 stream.c -static -o stream
}

build_stream
