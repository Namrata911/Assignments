#!/bin/bash
#to find factors of a number
read -p "Enter a number : " num
for (( i=2;i<=$num; i++ ))
do
   while [ $(($num%$i)) == 0 ]
	do
        echo $i
        num=$(($num/$i))
   done
done
