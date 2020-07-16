#!/bin/bash
counter=0;
Fru[((counter++))]="Apple"
Fru[((counter++))]="Orange"
Fru[((counter))]="Banana"
echo $counter
echo ${Fru[*]}
