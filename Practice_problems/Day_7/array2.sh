#!/bin/bash
for(( counter=0; counter<=5; counter++))
do
	Value[$counter]=$counter
done
echo ${Value[@]}
