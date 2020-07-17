#!/bin/bash
welcome_Message="Welcome to Employee wage computation program"
echo $welcome_Message
wagePerHour=20
fullDayHours=8
partTimeHours=4
dailyWage=0
monthlyWage=0
workingDayInMonth=20
totalAttendedHours=0
totalAttendedDays=0
isAbsent=0
isPresent=1
isPartTime=2
while [ $totalAttendedDays -le 20 -o $totalAttendedHours -le 100 ]
do
	attendance=$((RANDOM%3))
	case $attendance in
	$isPresent)
	totalAttendedHours=$(($totalAttendedHours+8))
	totalAttendedDays=$(($totalAttendedDays+1))
	;;
	$isPartTime)
	totalAttendedHours=$(($totalAttendedHours+4))
	totalAttendedDays=$(($totalAttendedDays+1))
	;;
	$isAbsent)
	totalAttendedHours=$(($totalAttendedHours+0))
	totalAttendedDays=$(($totalAttendedDays+0))
	;;
	esac
done
monthlyWage=$(($totalAttendedHours*$wagePerHour))
echo "Monthly Wage of employee is :- "$monthlyWage

