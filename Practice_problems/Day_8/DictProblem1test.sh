declare -A dictForOne
declare -A dictForTwo
declare -A dictForThree
declare -A dictForFour
declare -A dictForFive
declare -A dictForSix
isOne=0
isTwo=0
isThree=0
isFour=0
isFive=0
isSix=0
key=0
range=$((6-1+1))
declare -A dictForDice
while [ $isOne -lt 10 -a $isTwo -lt 10 -a $isThree -lt 10 -a $isFour -lt 10 -a $isFive -lt 10 -a $isSix -lt 10 ]
do
   diceValue=$(($((RANDOM % $range))+1));
   dictForDice[$key]=$diceValue
   key=$(($key+1))
   case $diceValue in
      1)isOne=$(($isOne+1))
      dictForOne[ "Dice Roll value 1 for " $isOne "time" ]=$diceValue
      ;;
      2)isTwo=$(($isTwo+1))
      ;;
      3)isThree=$(($isThree+1))
      ;;
      4)isFour=$(($isFour+1))
      ;;
      5)isFive=$(($isFive+1))
      ;;
      6)isSix=$(($isSix+1))
      ;;
   esac
done
if []
