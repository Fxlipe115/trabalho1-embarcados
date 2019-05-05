#!/bin/bash

frequency=900
output=arm.csv

echo "i.MX 6ULZ(Arm Cortex-A7)" > $output
echo "${frequency}MHz" >> $output
echo "entrada, ciclos, tempo(ms)\n" >> $output
for file in $( ls ./arm/ )
do
    while IFS=" " read -r property value remainder
    do
        if [ "$property" = "host_inst_rate" ] 
        then
            time=$(awk -v val=$value -v freq=$frequency 'BEGIN { print val/freq }')
            echo "$(basename ${file%.*}), $value, $time" >> $output
        fi
    done < "./arm/${file}"
done
