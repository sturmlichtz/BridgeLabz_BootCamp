#!/bin/bash
monthRange=$((12-1+1))
individuals=0;
monthInNum=1
for month in {JAN,FEB,MAR,APR,MAY,JUN,JUL,AUG,SEP,OCT,NOV,DEC}
do
	monthInWord[$monthInNum]=$month
	monthInNum=$(($monthInNum+1))
done
echo ${monthInWord[@]}
declare -A dictForBirthday
for((i=1;i<=50;i++))
do
	monthValue=$(($((RANDOM % $monthRange))+1));
	case $monthValue in
		1)dictForBirthday["$monthValue"$i]="individual No.$i"
		;;
		2)dictForBirthday["2"$i]="individual No.$i"
		;;
		3)dictForBirthday["3"$i]="individual No.$i"
		;;
		4)dictForBirthday["4"$i]="individual No.$i"
		;;
		5)dictForBirthday["5"$i]="individual No.$i"
		;;
		6)dictForBirhday["6"$i]="individual No.$i"
		;;
		7)dictForBirthday["7"$i]="individual No.$i"
		;;
		8)dictForBirthday["8"$i]="individual No.$i"
		;;
		9)dictForBirthday["9"$i]="individual No.$i"
		;;
		10)dictForBirthday["10"$i]="individual No.$i"
		;;
		11)dictForBirthday["11"$i]="individual No.$i"
		;;
		12)dictForBirthday["12"$i]="individual No.$i"
		;;
	esac
done
read -p "Enter the last two digit of birth year :- " birthYear
read -p "Enter the Month in number Find all the individuals having birthdays in the same month :- " monthInNumber
if [ $birthYear -eq 92 -o $birthYear -eq 93 ]
then
		echo "all the individuals having birthdays in the month of ${monthInWord[$monthInNumber]} :- " 
		for((i=1;i<=50;i++))
		do
			echo -n "${dictForBirthday["$monthInNumber"$i]} "
		done
else
	echo "Sorry! Data is missing for your Birth Year. Please Try later !"
fi
