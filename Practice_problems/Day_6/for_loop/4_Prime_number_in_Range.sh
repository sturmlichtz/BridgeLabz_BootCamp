#!/bin/bash
read -p "Enter the lower range :- " lower_num
read -p "Enter the upper range :- " upper_num
echo "Prime numbers in given range are"
for (( i=lower_num ; i<$upper_num ; i++ ))
do
   flag=1;
   for (( j=2; j<$i; j++))
   do
      if [ $(($i % $j)) == 0 ]
      then
         flag=0;
         break;
      fi
   done
   if [ $flag == 1 ]
   then
      echo $i
   fi
done
