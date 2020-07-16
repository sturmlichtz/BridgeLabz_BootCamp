#!/bin/bash
read -p "Enter number in Power of 10 :-" digit
case $digit in
        10)echo "Ten"
        ;;
       	100)echo "Hundred"
        ;;
        1000)echo "Thousand"
        ;;
        1000000)echo "Million"
        ;;
        *)echo " Enter Number in power of 10 !"
        ;;
esac
