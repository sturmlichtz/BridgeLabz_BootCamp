#!/bin/bash
read -p "Enter any number in range of 1 to 7 :-" digit
if [ $digit -eq 1 ]
then
        echo "Sunday"
elif [ $digit -eq 2 ]
then
        echo "Monday"
elif [ $digit -eq 3 ]
then
        echo "Tuesday"
elif [ $digit -eq 4 ]
then
        echo "Wednesday"
elif [ $digit -eq 5 ]
then
        echo "Thursaday"
elif [ $digit -eq 6 ]
then
        echo "Friday"
elif [ $digit -eq 7 ]
then
        echo "Saturday"
else
	echo "Enter the number is range of 1 to 7 only !"
fi
