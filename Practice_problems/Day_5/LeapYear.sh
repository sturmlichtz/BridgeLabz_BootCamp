#!/bin/bash -x
read -p "Enter a year :- " year;
div_by_4=$(($year%4));
div_by_100=$(($year%100));
div_by_400=$(($year%400));
if [[ $year -lt 10000 && $year -gt 999 && $div_by_4 -eq 0 ]];
then
	if [[ $div_by_100 -eq 0 ]];
	then
		if [[ $div_by_400 -eq 0 ]];
		then
			echo "a leap year"
		else
			echo "not a leap year";
		fi
	else
		echo "a leap year";
	fi
else
	echo "Not a leap year";
fi
