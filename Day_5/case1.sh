#!/bin/bash 

for file in $(ls)
do
ext=${file##*\.}
case "$ext" in 
java) 
	echo "$file: java source file" ;;
o) 
	echo "$file : object file" ;;
sh)
	echo  "$file : shell script" ;;
Ext) 
	echo "$file : Text file" ;;
*) 
	echo "$file : Not processed"  ;;
esac
done
