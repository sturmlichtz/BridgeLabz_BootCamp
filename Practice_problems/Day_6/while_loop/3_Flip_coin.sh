#!/bin/bash
ifHeads=0;
ifTails=1;
headsWins=0;
tailsWins=0
while [ "$headsWins" -lt 11 ] && [ "$tailsWins" -lt 11 ]
do
   check=$((RANDOM%2));
   if [ $check -eq $ifHeads ];
   then
      let headsWins=headsWins+1
   elif [ $check -eq $ifTails ];
   then
      let tailsWins=tailsWins+1
   fi
done
echo "heads win count :- "$headsWins;
echo "tails wins counts :- "$tailsWins;
