#!/bin/bash

for input in $( ls ../algorithms/png_decode/images/*.png )
do
	build/ARM/gem5.opt emb/st_sim.py -c ../algorithms/png_decode/png_decode -o $input --cpu ARM_A7
	cp ./m5out/stats.txt ..//results/png_decode/arm/$(basename ${input%.*}).txt
done
