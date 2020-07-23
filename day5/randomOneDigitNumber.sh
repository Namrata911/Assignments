#!/bin/bash -x
for digit in {1..10}
do
	oneDigitNumber=$(( RANDOM%10 ))
	echo $oneDigitNumber
done
