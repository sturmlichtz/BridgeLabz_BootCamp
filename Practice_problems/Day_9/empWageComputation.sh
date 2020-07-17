#!/bin/bash
welcome_Message="Welcome to Employee wage computation program"
echo $welcome_Message
wagePerHour=20
fullDayHours=8
partTimeHours=4
dailyWage=0
monthlyWage=0
workingDayInMonth=20
isAbsent=0
isPresent=1
isPartTime=2
attendance=$((RANDOM%3))
case $attendance in
$isPresent)
	echo "Employee was Present for $(($fullDayHours*$workingDayInMonth)) hours"
	monthlyWage=$(($wagePerHour*$fullDayHours*$workingDayInMonth))
	echo "Monthly Wage is :- " $monthlyWage
	;;
$isPartTime)
	echo "Employee was Present for $(($partTimeHours*$workingDayInMonth)) hours"
	monthlyWage=$(($wagePerHour*$partTimeHours*$workingDayInMonth))
	echo "Monthly Wage is :- " $monthlyWage
	;;
$isAbsent)
	echo "Empolyee was Absent"
	echo "Monthly Wage is :- " $monthlyWage
	;;
esac


