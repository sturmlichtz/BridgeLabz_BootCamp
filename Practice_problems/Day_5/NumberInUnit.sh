#!/bin/bash
read -p "Enter number in Power of 10 :-" digit
if [ $digit -eq 10 ]
then
        echo "Ten"
elif [ $digit -eq 100 ]
then
        echo "Hundred"
elif [ $digit -eq 1000 ]
then
        echo "Thousand"
elif [ $digit -eq 1000000 ]
then
        echo "Million"
else
	echo "Enter Number only in power of 10 !"
fi
