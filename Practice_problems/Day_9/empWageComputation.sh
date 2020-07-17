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
case $attendance in
$isPresent)
	echo "Employee was Present for $fullDayHours hours"
	dailyWage=$(($wagePerHour*$fullDayHours))
	echo "Daily Wages are :- " $dailyWage
	;;
$isPartTime)
	echo "Employee was Present for $partTimeHours hours"
	dailyWage=$(($wagePerHour*$partTimeHours))
	echo "Daily Wages are :- " $dailyWage
	;;
$isAbsent)
	echo "Empolyee was Absent"
	echo "Daily Wages are :- " $dailyWage
	;;
esac


