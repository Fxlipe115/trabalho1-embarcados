#!/bin/bash

for input in 10 100 1000 10000 100000
do
	build/ARM/gem5.opt emb/st_sim.py -c ../algorithms/sha256/sha256 -o $input --cpu ARM_A7
	cp ./m5out/stats.txt ../results/sha256/arm/${input}.txt
done
