#!/bin/bash
gamblerMoney=100
betsMade=0
betsWon=0
while [ $gamblerMoney -gt 0 ] && [ $gamblerMoney -lt 200 ]
do
	echo "Let's play by giving Rupee 1/- "
	betsMade=$(( $betsMade+1 ))
	bet=$(( RANDOM%2 ))
	case $bet in
	0)
		echo "Lost this bet"
		gamblerMoney=$(( $gamblerMoney-10 ))
	;;
	1)
		echo "Won this bet"
		gamblerMoney=$(( $gamblerMoney+10 ))
		betsWon=$(( $betsWon+1 ))
	;;
	esac
	echo "Current money with gambler : $gamblerMoney"
done

echo "Gambler made $betsMade bets "
echo "Gambler won $betsWon bets "

if [ $gamblerMoney -eq 200 ]
then
	echo "Gambler won  "
else
	echo "Gambler lost "
fi
