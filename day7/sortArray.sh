#!/bin/bash
for((i=0;i<10;i++))
do
        myArray[$i]=$(( RANDOM%899+100 ))
done
echo "Array in original order"
echo ${myArray[@]}
length=${#myArray[@]}

# Performing Bubble sort
for ((i = 0; i<$length; i++))
do
    for((j = 0; j<$length-$i-1; j++))
    do

        if [ ${myArray[j]} -gt ${myArray[$((j+1))]} ]
        then
            # swap
            temp=${myArray[j]}
            myArray[$j]=${myArray[$((j+1))]}
            myArray[$((j+1))]=$temp
        fi
    done
done

echo "Array in sorted order :"
echo ${myArray[@]}
echo "Second largest number is ${myArray[$((length-2))]} "
echo "Second smallest number is ${myArray[1]} "
