#!/bin/bash
cash=100;
bet=1;
ifwin=0;
ifloss=1;
betsWins=0;
betsloss=0;
while [ "$cash" -lt 200 ] && [ "$cash" -gt 0 ];
do
   check=$((RANDOM%2));
   if [ $check -eq $ifwin ];
   then
      cash=$(($cash+1))
      let betsWins=$(($betsWins+$bet))
      echo "bets win count :- " $betsWins;
   elif [ $check -eq $ifloss ];
   then
      cash=$(($cash-1))
      let betsloss=betsloss+1
      echo "bets loss counts :- " $betsloss;
   fi
