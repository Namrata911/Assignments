#!/bin/bash

declare -A diceDict

for step in {1..6}
do
	diceDict[$step]=0
done

echo "Initial counts for all dice numbers are zero"
echo "Keys : ${!diceDict[@]}"
echo "Values : ${diceDict[@]}"

f=0

while	[ $f -eq 0 ]
do
	rollDie=$(( (RANDOM%6)+1 ))
	count=${diceDict[$rollDie]}
	diceDict[$rollDie]=$(( $count+1 ))
	if [ $(( $count+1 )) -eq 10 ]
	then
		f=1
		winner=$rollDie
	fi
done

echo "Counts after rolling dice multiple times are : "
min=10
counter=0
for key in ${!diceDict[@]}
do
	value=${diceDict[$key]}
	echo "dice number:" $key " count:" $value
	if [ $value -le $min ]
	then
		min=$value
		losers[((counter++))]=$key
	fi
done

echo "$winner has been up for 10 times"
echo "${losers[@]} has/have been up for minimum times that is $min times"
