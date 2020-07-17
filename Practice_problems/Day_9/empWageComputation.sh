#!/bin/bash
welcome_Message="Welcome to Employee wage computation program"
echo $welcome_Message
isPresent=1
isAbsent=0
attendance=$((RANDOM%2))
if [ $attendance -eq $isPresent ]
then
	echo "Employee is Present"
elif [ $attendance -eq $isAbsent ]
then
	echo "Empolyee is Absent"
fi
