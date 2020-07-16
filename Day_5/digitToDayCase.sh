#!/bin/bash
read -p "Enter any digit in range of 1 to 7 :-" digit
case $digit in
        1)echo "Sunday"
        ;;
        2)echo "Monday"
        ;;
        3)echo "Tuseday"
        ;;
        4)echo "wednsday"
        ;;
        5)echo "Thursday"
        ;;
        6)echo "Friday"
        ;;
        7)echo "Saturday"
        ;;
        *)echo " Enter digit in range of 1-7 !"
        ;;
esac
