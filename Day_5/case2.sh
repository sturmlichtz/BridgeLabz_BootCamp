#!/bin/bash 
isFullTime=1;
isPartTime=0;
empRate=20;
isPresent=$(( RANDOM % 2 ));
function result_func(){
	salary=$((empRate*empHrs));
	echo "$salary";
}
for (( counter=1; counter<=5; counter++))
do
	case ${isPresent} in 
		$isPartTime) empHrs=4
		;;
		$isFullTime) empHrs=8
		;;
	esac	
	result_func
done
