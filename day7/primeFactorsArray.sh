#!/bin/bash
#to find factors of a number
read -p "Enter a number : " num
counter=0
for (( i=2;i<=$num; i++ ))
do
   while [ $(($num%$i)) == 0 ]
		do
        myArray[((counter++))]=$i
        num=$(($num/$i))
		done
done

echo ${myArray[@]}

