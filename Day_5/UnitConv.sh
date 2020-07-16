#!/bin/bash -x
Ft=12
UserInch=0.3048;
read -p "Enter value you want convert into Feet :-" UserInch;
ans=$(( $UserInch/$Ft ));
echo "Value in Feet :-"$ans
