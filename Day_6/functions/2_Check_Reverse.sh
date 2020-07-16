#!/bin/bash -x
read -p "Enter the First Value :- " num1
read -p "Enter the Second value :- " num2
checkReverse(){
check=0
temp=$num1
while [ $temp != 0 ];
do
   digit=$(($temp%10));
   check=$(($check*10+$digit));
   temp=$((temp/10));
done
echo $check
}
if [ $(checkReverse) -eq $num2 ];
then
   echo "Numbers are reverse of each other"
else
   echo "Numbers are not reverse of each other"
fi

