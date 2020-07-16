#!/bin/bash
read -p "Enter the value for Exponent :- " n
base=2;
result=1;
for(( i=0; i<=n; i++))
do
   result=$(($result * $base));
   echo $result
done
