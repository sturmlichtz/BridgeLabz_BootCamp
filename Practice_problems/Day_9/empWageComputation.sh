#!/bin/bash
welcome_Message="Welcome to Employee wage computation program"
echo $welcome_Message
wagePerHour=20
fullDayHours=8
dailyWage=0
isPresent=1
isAbsent=0
attendance=$((RANDOM%2))
if [ $attendance -eq $isPresent ]
then
	echo "Employee is Present"
	dailyWage=$(($wagePerHour*$fullDayHours))
	echo "Daily Wages are :- " $dailyWage
elif [ $attendance -eq $isAbsent ]
then
	echo "Empolyee is Absent"
	echo "Daily Wages are :- " $dailyWage
fi

