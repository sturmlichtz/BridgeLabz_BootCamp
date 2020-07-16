#!/bin/bash 
isFullTime=1;
isPartTime=0;
empRate=20;
isPresent=$(( RANDOM % 2 ));
counter=0
while [ $counter -lt 5 ];
do
	case ${isPresent} in 
		$isPartTime) empHrs=4
		;;
		$isFullTime) empHrs=8
		;;
	esac	
	salary=$((empRate*empHrs));
	echo "$salary";
	counter=$(($counter+1));
done
