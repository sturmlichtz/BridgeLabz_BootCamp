#!/bin/bash
read -p "Enter the value for Exponent :- " n
echo "table of powers of 2 upto 256 :-"
result=1;
base=2;
while [ $result -lt 256 ]
do
   result=$(($result * $base));
   echo $result
done
