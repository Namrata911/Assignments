#!/bin/bash
read -p "Enter a number to calculate factorial : " num
factorial=1

counter=$num

while [[ $counter -ge 1 ]]
do
   factorial=$(( $factorial * $counter ))
   counter=$(( $counter - 1 ))
done

echo "Factorial of $num is $factorial "
