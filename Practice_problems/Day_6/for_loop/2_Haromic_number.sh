#!/bin/bash
read -p "Enter the value for n :- " n
result=0
echo " Hn :-"
for(( i=1; i<=n; i++))
do
   echo -n " 1/$i + "
   result=$(($result+1/$i));
done
