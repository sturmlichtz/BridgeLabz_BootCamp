#!/bin/bash -x
Range=$((6-1+1))
DiceValue=$(($(( RANDOM % $Range))+1));
echo "Dice Number is :- "$DiceValue
