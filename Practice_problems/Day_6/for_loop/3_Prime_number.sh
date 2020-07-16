#!/bin/bash
read -p "Enter the number to check prime :- " num
flag=0;
for (( i=2; i<$num; i++ ))
do
   if [ $(($num % $i)) == 0 ]
   then
      flag=1;
      break
   fi
done
if [ $flag == 0 ]
then
   echo "Prime Number"
else
   echo "not a Prime Number"
fi
