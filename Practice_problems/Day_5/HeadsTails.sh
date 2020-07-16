#!/bin/bash
ifHeads=0;
ifTails=1;
check=$((RANDOM%2));
if [ $check -eq $ifHeads ];
then	
	echo "Heads";
elif [ $check -eq $ifTails ];
then
	echo "Tails"
fi


