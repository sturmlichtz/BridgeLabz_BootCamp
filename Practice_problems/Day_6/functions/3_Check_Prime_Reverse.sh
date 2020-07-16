#!/bin/bash
read -p "Enter the value :- " num
checkPrime(){
flag=0;
for (( i=2; i<$num; i++ ))
do
   if [ $(($num % $i)) -eq 0 ];
   then
      flag=1;
      break
   fi
done
echo $flag
}
ReverseNumber(){
reverse=0
temp=$num
while [ $temp != 0 ];
do
   digit=$(($temp%10));
   reverse=$(($reverse*10+$digit));
   temp=$((temp/10));
done
echo $reverse
}
if [ $(checkPrime) -eq 0 ];
then
   echo "Prime Number"
else
   echo "Not a Prime Number"
fi
echo "reverse of given number is "$(ReverseNumber)
num=$(ReverseNumber)
if [ $(checkPrime) -eq 0 ];
then
   echo "Prime Number"
else
   echo "Not a Prime Number"
fi
