#!/bin/bash -x
read -p "Enter a day :- " Day;
read -p "Enter a month :- " Month;
if [[ "$Month" == "March" || "$Month" == "April" || "$Month" == "May" || "$Month" == "June" ]];
then
	if [[ "$Month" == "March" || "$Month" == "June" ]];
	then
		if [[ "$Month" == "March" ]];
		then 
			if [[ "$Day" -gt 19 ]];
			then
				echo "True";
			else
				echo "False";
			fi
		elif [[ "$Month" == "June" ]];
		then
			if [[ "$Day" -lt 21 ]];
			then
				echo "True";
			else
				echo "False";
			fi
		fi
	else
		echo "True";
	fi
else
	echo "False"
fi
