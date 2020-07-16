#!/bin/bash
range=$((6-1+1))
declare -A dictForOne
declare -A dictForTwo
declare -A dictForThree
declare -A dictForFour
declare -A dictForFive
declare -A dictForSix
isOne=0
isTwo=0
isThree=0
isFour=0
isFive=0
isSix=0
key=0
declare -A dictForDice
while [ $isOne -lt 10 -a $isTwo -lt 10 -a $isThree -lt 10 -a $isFour -lt 10 -a $isFive -lt 10 -a $isSix -lt 10 ]
do
	diceValue=$(($((RANDOM % $range))+1));
	dictForDice[$key]=$diceValue
	key=$(($key+1))
	case $diceValue in
		1)isOne=$(($isOne+1))
		;;
		2)isTwo=$(($isTwo+1))
		;;
		3)isThree=$(($isThree+1))
		;;
		4)isFour=$(($isFour+1))
		;;
		5)isFive=$(($isFive+1))
		;;
		6)isSix=$(($isSix+1))
		;;
	esac
done
maxValue=0
min=0
if [ $isOne -eq 10 ]
then
	echo "Dice 1 reached for maximum" $isOne "times."
elif [ $isTwo -eq 10 ]
then
	echo "Dice 2 reached for maximum" $isTwo "times."
elif [ $isThree -eq 10 ]
then
	echo "Dice 3 reached for maximum" $isThree "times."
elif [ $isFour -eq 10 ]
then
	echo "Dice 4 reached for maximum" $isFour "times."
elif [ $isFive -gt $isTwo -a $isFive -gt $isThree -a $isFive -gt $isFour -a $isFive -gt $isOne -a $isFive -gt $isSix ]
then
	echo "Dice 5 reached for maximum" $isFive "times."
elif [ $isSix -gt $isTwo -a $isSix -gt $isThree -a $isSix -gt $isFour -a $isSix -gt $isFive -a $isSix -gt $isOne ]
then
	echo "Dice 6 reached for maximum" $isSix "times."
fi


if [ $isOne -lt $isTwo -a $isOne -lt $isThree -a $isOne -lt $isFour -a $isOne -lt $isFive -a $isOne -lt $isSix ]
then
   echo "Dice 1 reached for minimum" $isOne "times."
elif [ $isTwo -lt $isOne -a $isTwo -lt $isThree -a $isTwo -lt $isFour -a $isTwo -lt $isFive -a $isTwo -lt $isSix ]
then
   echo "Dice 2 reached for minimum" $isTwo "times."
elif [ $isThree -lt $isTwo -a $isThree -lt $isOne -a $isThree -lt $isFour -a $isThree -lt $isFive -a $isThree -lt $isSix ]
then
   echo "Dice 3 reached minimum" $isThree "times."
elif [ $isFour -lt $isTwo -a $isFour -lt $isThree -a $isFour -lt $isOne -a $isFour -lt $isFive -a $isFive -lt $isSix ]
then
   echo "Dice 4 reached minimum" $isFour "times."
elif [ $isFive -lt $isTwo -a $isFive -lt $isThree -a $isFive -lt $isFour -a $isFive -lt $isOne -a $isFive -lt $isSix ]
then
   echo "Dice 5 reached minimum" $isFive "times."
elif [ $isSix -lt $isTwo -a $isSix -lt $isThree -a $isSix -lt $isFour -a $isSix -lt $isFive -a $isSix -lt $isOne ]
then
   echo "Dice 6 reached minimum" $isSix "times."
fi
