#!/bin/bash
range=$((6-1+1))
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
declare -A dictForCompare
dictForCompare[1]=$isOne
dictForCompare[2]=$isTwo
dictForCompare[3]=$isThree
dictForCompare[4]=$isFour
dictForCompare[5]=$isFive
dictForCompare[6]=$isSix
maxTimes=0
minTimes=10
for key in "${!dictForCompare[@]}"
do
echo "Dice Value :- $key : Number of Times it rolled :- ${dictForCompare[$key]}"
	if [ "${dictForCompare[$key]}" -gt "$maxTimes" ]
  	then
   	maxTimes=${dictForCompare[$key]}
		maxTimesDice=$key
	fi
done
for key in "${!dictForCompare[@]}"
do
	if [ "${dictForCompare[$key]}" -lt "$minTimes" ]
  	then
   	minTimes=${dictForCompare[$key]}
		minTimesDice=$key
	fi
done
echo "Number $maxTimesDice rolled for maximum times"
echo "Number $minTimesDice rolled for minimum times"

