#!/bin/bash

for input in 10 100 1000 10000 100000
do
	build/ARM/gem5.opt emb/st_sim.py -c ../algorithms/bitcount/bitcount -o $input --cpu ARM_A7
	cp ./m5out/stats.txt ../results/bitcount/arm/${input}.txt
done
