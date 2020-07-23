#!/bin/bash -x
sum=0
for digit in {1..5}
do
	randomValue=$(( RANDOM%90+10 ))
	sum=$(( $sum+$randomValue ))
done
avg=$(( $sum/5 ))
echo "Sum of 5 Two Digit Numbers is $sum"
echo "Average of them is : $avg "
