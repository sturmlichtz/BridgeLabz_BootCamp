#!/bin/bash 
read -p "Enter value for lower range upto 0 :- " lowerRange
read -p "Enter value for upper range upto 100 :- " upperRange
index=0
for((i=$lowerRange;i<=$upperRange;i++))
do
	if [[ $(($i%11)) -eq 0 && $i -ne 0 ]]
	then
		arrayForOP[$index]=$i
		index=$(($index+1))
	fi
done
echo "the digits that are repeated twice are :- " ${arrayForOP[@]}
