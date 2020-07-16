#!/bin/bash -x
Range=$((6-1+1));
FirstRandomValue=$(($(( RANDOM % $Range ))+1));
SecondRandomValue=$(($(( RANDOM % $Range ))+1));
FinalValue=$(( $FirstRandomValue + $SecondRandomValue ));
echo "Addition of Two Random Dices are :- "$FinalValue;
