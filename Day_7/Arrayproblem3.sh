#!/bin/bash
read -p "Enter the value :- " num
echo "Factors are :- "
if [ $num -le 1 ]
then
   echo $num
fi
index=0
for(( i=2; i<=$num; i++ ))
do
   while [ $(($num%$i)) -eq 0 ]
   do
      arrayForFactors[$index]=$i
		index=$index+1
      num=$(($num/$i))
   done
done
echo ${arrayForFactors[@]}
