#!/bin/bash 
Range=$((999-100+1));
Min=999;
Max=100;
Counter=0;
while [ $Counter -lt 4 ];
do
	RandomValue=$(($((RANDOM%Range))+100));
	if [ $RandomValue -lt $Min ];
	then
		Min=$RandomValue;
	elif [ $RandomValue -gt $Max ];
	then 
		Max=$RandomValue;
	fi
	let Counter=Counter+1
done
echo "Max Value :- "$Max;
echo "Min Value :- "$Min;

