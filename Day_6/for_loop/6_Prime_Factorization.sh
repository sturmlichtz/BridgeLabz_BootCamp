#!/bin/bash
read -p "Enter key element :- " num
echo "Factors are :- "
if [ $num -le 1 ]
then
   echo $num
fi
for(( i=2; i<=$num; i++ ))
do
   while [ $(($num%$i)) -eq 0 ]
   do
      echo $i
      num=$(($num/$i))
   done
Done
