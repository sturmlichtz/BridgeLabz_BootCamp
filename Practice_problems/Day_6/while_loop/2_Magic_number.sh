echo "assume of any number in range of 1 to 100"
low=1
high=100
while [ $high -ge $low ]
do
   mid=$(($(($low+$high))/2))
   echo "Enter 1 if the number is high than " $mid
   echo "Enter 2 if the number is less than " $mid
   echo "Enter 0 if equal " $mid
   read choice
   if [ $choice -eq 1 ]
   then
      low=$mid
   elif [ $choice -eq 2 ]
   then
      high=$mid
   elif [ $choice -eq 0 ]
   then
      echo "assumed number is :- " $mid
      break
   fi
Done
