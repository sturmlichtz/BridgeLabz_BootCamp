#!/bin/bash
for((i=0;i<3;i++))
do
	read -p "Enter the value :- " num
	arrayForInput[$i]=$num
done
echo "Numbers are :- "${arrayForInput[@]}
for((j=0;j<${#arrayForInput[@]};j++))
do
	sum=$(($sum+${arrayForInput[$j]}))
done
if [ $sum -eq 0 ]
then
	echo "Sum of three integers is equal to zero"
else
	echo "Sum of three integers is not equal to zero"
fi
