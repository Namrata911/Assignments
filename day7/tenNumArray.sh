#!/bin/bash 
for((i=0;i<10;i++))
do
	myArray[$i]=$(( RANDOM%899+100 ))
done
echo ${myArray[@]}
min=${myArray[0]}
secondMin=0
max=${myArray[0]}
secondMax=0
length=${#myArray[@]}
for((i=0;i<$length;i++))
do
	currentNum=${myArray[i]}
	if [ $currentNum -lt $min ]
	then
		secondMin=$min
		min=$currentNum
	fi
	if [ $currentNum -gt $max ]
	then
		secondMax=$max
		max=$currentNum
	fi
done

echo "$secondMin is 2nd smallest number "
echo "$secondMax is 2nd largest number "
