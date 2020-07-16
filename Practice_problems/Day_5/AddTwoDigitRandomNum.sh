#!/bin/bash -x
Range=$((99-10+1));
Counter=0
while [ $Counter -lt 5 ];
do
	RandomValue=$(($((RANDOM%Range))+10));
	Total=$(($Total+$RandomValue));
	echo "Sum of 5 Random Two Digit value is "$Total;
	let Counter=Counter+1
done
