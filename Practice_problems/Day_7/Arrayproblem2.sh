#!/bin/bash 
range=$((999-100+1))
for((i=0;i<10;i++))
do
   randomValue=$(($((RANDOM%$range))+100))
   arrayForRandom[$i]=$randomValue
done
echo "10 Randomly generated 3 digit numbers :- " ${arrayForRandom[@]}
arrayLength=${#arrayForRandom[@]}
for((i=0;i<$arrayLength;i++))
do
	for((j=$(($i+1)); j<$arrayLength; j++))
	do
		if [ ${arrayForRandom[$i]} -gt ${arrayForRandom[$j]} ]
		then
		temp=${arrayForRandom[$i]}
		arrayForRandom[$i]=${arrayForRandom[$j]}
		arrayForRandom[$j]=$temp
		fi
	done
done
echo "Second largest element is :- "${arrayForRandom[8]}
echo "Second smallest element is :- "${arrayForRandom[1]}
echo "Numbers in sorted order :- " ${arrayForRandom[@]} #optional

