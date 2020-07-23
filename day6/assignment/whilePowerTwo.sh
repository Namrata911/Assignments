#!/bin/bash 
read -p "Enter number upto which you want to print square : " num
power=0
i=1
while [ $i -le $num ] && [ $power -lt 256 ]
do
	power=$(( 2 ** $i ))
	echo "2^$i : $power"
	i=$(( $i+1 ))
done

