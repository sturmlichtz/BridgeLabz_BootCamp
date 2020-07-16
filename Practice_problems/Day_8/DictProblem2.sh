#!/bin/bash
monthRange=$((12-1+1))
individuals=0;
declare -A dictForBirthday
declare -A dictForJan
declare -A dictForFeb
declare -A dictForMar
declare -A dictForApr
declare -A dictForMay
declare -A dictForJune
declare -A dictForJuly
declare -A dictForAug
declare -A dictForSep
declare -A dictForOct
declare -A dictForSep
declare -A dictForNov
declare -A dictForDec

for((i=1;i<=50;i++))
do
	monthValue=$(($((RANDOM % $monthRange))+1));
	case $monthValue in
		1)dictForJan["Jan"$i]="individual No.$i"
		;;
		2)dictForFeb["Feb"$i]="individual No.$i"
		;;
		3)dictForMar["Mar"$i]="individual No.$i"
		;;
		4)dictForApr["Apr"$i]="individual No.$i"
		;;
		5)dictForMay["May"$i]="individual No.$i"
		;;
		6)dictForJune["June"$i]="individual No.$i"
		;;
		7)dictForJuly["July"$i]="individual No.$i"
		;;
		8)dictForAug["Aug"$i]="individual No.$i"
		;;
		9)dictForSep["Sep"$i]="individual No.$i"
		;;
		10)dictForOct["Oct"$i]="individual No.$i"
		;;
		11)dictForNov["Nov"$i]="individual No.$i"
		;;
		12)dictForDec["Dec"$i]="individual No.$i"
		;;
	esac
done
read -p "Enter the last two digit of birth year :- " birthYear
read -p "Enter the Month in number Find all the individuals having birthdays in the same month :- " monthInNumber
if [ $birthYear -eq 92 -o $birthYear -eq 93 ]
then
	case $monthInNumber in
		1)echo "all the individuals having birthdays in the month of Jan :- " ${dictForJan[@]}
 		;;
		2)echo "all the individuals having birthdays in the month of Feb :- " ${dictForFeb[@]}
 		;;
		3)echo "all the individuals having birthdays in the month of Mar :- " ${dictForMar[@]}
 		;;
		4)echo "all the individuals having birthdays in the month of Apr :- " ${dictForApr[@]}
 		;;
		5)echo "all the individuals having birthdays in the month of May :- " ${dictForMay[@]}
 		;;
		6)echo "all the individuals having birthdays in the month of June :- " ${dictForJune[@]}
 		;;
		7)echo "all the individuals having birthdays in the month of July :- " ${dictForJuly[@]}
 		;;
		8)echo "all the individuals having birthdays in the month of Aug :- " ${dictForAug[@]}
 		;;
		9)echo "all the individuals having birthdays in the month of Sep :- " ${dictForSep[@]}
 		;;
		10)echo "all the individuals having birthdays in the month of Oct :- " ${dictForOct[@]}
 		;;
		11)echo "all the individuals having birthdays in the month of Nov :- " ${dictForNov[@]}
 		;;
		12)echo "all the individuals having birthdays in the month of Dec :- " ${dictForDec[@]}
 		;;
		*)echo "Enter the birth month in numbers !"
		;;
	esac
else
	echo "Sorry! Data is missing for your Birth Year. Please Try later !"
fi
