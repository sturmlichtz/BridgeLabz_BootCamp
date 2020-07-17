#!/bin/bash 
read -p "Enter the value for varible A :- " a
read -p "Enter the value for varible B :- " b
read -p "Enter the value for varible C :- " c
declare -A dictForValue
dictForValue[1]=$(($a+$b*$c))
dictForValue[2]=$(($a*$b+$c))
dictForValue[3]=$(($c+$a/$b))
dictForValue[4]=$(($a%$b+$c))
echo "Values in Dictionary" ${dictForValue[@]}
for((i=1;i<=4;i++))
do
	arrayForRandom[$i]=${dictForValue[$i]}
done
echo "Values in Array" ${arrayForRandom[@]}
arrayLength=${#arrayForRandom[@]}

for ((i=0;i<=$arrayLength;i++))
do
	for ((j=$(($i+1)); j<=$arrayLength;j++))
	do
		if [[ ${arrayForRandom[$i]} -lt ${arrayForRandom[$j]} ]]
		then
		temp=${arrayForRandom[$i]}
		arrayForRandom[$i]=${arrayForRandom[$j]}
		arrayForRandom[$j]=$temp
		fi
	done
done


echo "Numbers in sorted in Dis. order :- " ${arrayForRandom[@]}

for ((i=0;i<=$arrayLength;i++))
do
	for ((j=$(($i+1)); j<=$arrayLength;j++))
	do
		if [[ ${arrayForRandom[$i]} -gt ${arrayForRandom[$j]} ]]
		then
		temp=${arrayForRandom[$i]}
		arrayForRandom[$i]=${arrayForRandom[$j]}
		arrayForRandom[$j]=$temp
		fi
	done
done


echo "Numbers in sorted in Ass. order :- " ${arrayForRandom[@]}
