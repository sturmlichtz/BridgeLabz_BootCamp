#!/bin/bash -x
read -p "Enter 1st value :-" a
read -p "Enter 2nd value :-" b
read -p "Enter 3rd value :-" c
Max=$a;
Min=$a;
if [ $b -gt $Max ];
then 
	Max=$b;
fi
if [ $c -gt $Max ];
then 
	Max=$c;
fi
if [ $b -lt $Min ];
then 
	Min=$b;
fi
if [ $c -lt $Min ];
then 
	Min=$c;
fi
echo "min value is" $Min;
echo "max value is" $Max;

echo "choose which Arithmetic Opeartion you want to perform:-
        1.a+b*c
        2.a%b+c
        3.c+a/b
        4.a*b+c"
read -p "Enter your choice " choice
if [ $choice == "1" ];
then
	Ans1=$(( $a + $b * $c));
	echo $Ans1;
elif [ $choice == "2" ];
then
	Ans2=$(( $a % $b + $c));
	echo $Ans2;
elif [ $choice == "3" ];
then
	Ans3=$(( $c + $a / $b));
	echo $Ans3
elif [ $choice == "4" ];
then
	Ans4=$(( $a * $b + $c));
	echo $Ans4
else
	echo "Choose correct option"
fi
