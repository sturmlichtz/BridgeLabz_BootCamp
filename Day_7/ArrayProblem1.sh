#!/bin/bash
range=$((999-100+1))
for((i=0;i<10;i++))
do
	randomValue=$(($((RANDOM%$range))+100))
	arrayForRandom[$i]=$randomValue
done
echo "10 Randomly generated 3 digit numbers :- " ${arrayForRandom[@]}
largest=0
secondLargest=0
smallest=999;
secondSmallest=999;
arrayLength=${#arrayForRandom[@]}
for(( i=0; i<$arrayLength;i++ ))
do
	if [ "${arrayForRandom[$i]}" -gt "$largest" ]
	then
		secondLargest=$largest
		largest=${arrayForRandom[$i]}
	elif [ "${arrayForRandom[$i]}" -gt "$secondLargest" ]
	then
		secondLargest=${arrayForRandom[$i]}
	fi
done
for(( i=0; i<$arrayLength;i++ ))
do
	if [ "${arrayForRandom[$i]}" -lt "$smallest" ]
	then
		secondSmallest=$smallest
		smallest=${arrayForRandom[$i]}
	elif [ "${arrayForRandom[$i]}" -lt "$secondSmallest" ]
	then
		secondSmallest=${arrayForRandom[$i]}
	fi
done
echo "2nd larget element is :- " $secondLargest
echo "2nd Smallest element is :- " $secondSmallest
