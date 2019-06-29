#!/bin/bash

gcc -O3 -fopenmp -DSTREAM_ARRAY_SIZE=80000000 -DNTIMES=10 stream.c -static -o stream
