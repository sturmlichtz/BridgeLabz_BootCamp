#!/bin/bash
welcome_Message="Welcome to Employee wage computation program"
echo $welcome_Message
wagePerHour=20
fullDayHours=8
partTimeHours=4
dailyWage=0
isAbsent=0
isPresent=1
isPartTime=2
attendance=$((RANDOM%3))
if [ $attendance -eq $isPresent ]
then
	echo "Employee was Present for $fullDayHours hours"
	dailyWage=$(($wagePerHour*$fullDayHours))
	echo "Daily Wages are :- " $dailyWage
elif [ $attendance -eq $isPartTime ]
then
	echo "Employee was Present for $partTimeHours hours"
	dailyWage=$(($wagePerHour*$partTimeHours))
	echo "Daily Wages are :- " $dailyWage

elif [ $attendance -eq $isAbsent ]
then
	echo "Empolyee was Absent"
	echo "Daily Wages are :- " $dailyWage
fi

