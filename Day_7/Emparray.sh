#!/bin/bash
isPartTime=1;
isFullTime=0;
empRateperHour=20;
Working_days=5;
for (( day=1; day<=$Working_days; day++ ))
do
	randomCheck=$(( RANDOM % 2 ));
	if [ $randomCheck -eq $isPartTime ]
	then
		empHrs=4;
	elif [ $randomCheck -eq $isFullTime ]
	then
		empHrs=8;
	else
		empHrs=0;
	fi
	salary=$(( $empHrs * $empRateperHour ));
	Array_salary[$day]=$salary 

done
echo ${Array_salary[@]}
