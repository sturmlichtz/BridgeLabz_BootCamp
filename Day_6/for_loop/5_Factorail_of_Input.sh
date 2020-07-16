#!/bin/bash
read -p "Enter the number to take factorial :- " num
flag=0;
factorial=1
for (( i=1; i<=$num; i++ ))
do
   factorial=$(($factorial*$i));
done
echo "Factorial of $num is" $factorial
