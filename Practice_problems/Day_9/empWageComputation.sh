#!/bin/bash -x
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
function getWorkHours() {
	case $attendance in
	1)
	totalAttendedHours=$(($totalAttendedHours+8))
	;;
	2)
	totalAttendedHours=$(($totalAttendedHours+4))
	;;
	3)
	totalAttendedHours=$(($totalAttendedHours+0))
	;;
	esac
}
while [ $totalAttendedDays -le 20 -o $totalAttendedHours -le 100 ]
do
	attendance=$((RANDOM%3))
	case $attendance in
	$isPresent)
	getWorkHours
	totalAttendedDays=$(($totalAttendedDays+1))
	;;
	$isPartTime)
	getWorkHours
	totalAttendedDays=$(($totalAttendedDays+1))
	;;
	$isAbsent)
	getWorkHours
	totalAttendedDays=$(($totalAttendedDays+0))
	;;
	esac
done
monthlyWage=$(($totalAttendedHours*$wagePerHour))
echo "Monthly Wage of employee is :- "$monthlyWage
