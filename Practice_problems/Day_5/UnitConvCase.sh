#!/bin/bash
echo "choose which unit conversion you want to perform:- 
	1. Feet To Inch
	2.Feet to Meter
	3.Inch to Feet
	4.Meter to Feet	"
read -p "Enter your choice " choice
case $choice in
        1) read -p "Enter the value in Feet :- " VarInFeet
	FeetToInch=12;
	AnsInInch=$(( $VarInFeet * $FeetToInch ));
	echo $AnsInInch;
        ;;
        2) read -p "Enter the value in Feet :- " VarInFeet
	FeetToMeter=0.3048;
	AnsInMeter=$(( $VarInFeet * $FeetToMeter ));
	echo $AnsInmeter;
        ;;
        3) read -p "Enter the value in Inch :- " VarInInch
	InchToFeet=1/12;
	AnsInFeet=$(( $VarInInch * $InchToFeet ));
	echo $AnsInFeet;
        ;;
        3) read -p "Enter the value in Meter :- " VarInMeter
	MeterToFeet=3.28;
	AnsInFeet=$(( $VarInMeter * $MeterToFeet ));
	echo $AnsInFeet;
        ;;
        *)echo " Enter Correct Choice!"
        ;;
esac
