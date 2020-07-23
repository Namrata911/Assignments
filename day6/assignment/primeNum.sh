#!/bin/bash 
read -p "Enter a number : " a
i=2
limit=$(( $a/2 ))
while [ $i -le $limit ]
do
	s=$(( $a%$i ))
	if [ $s -eq 0 ]
	then
		echo "Not Prime"
	exit
	else
		i=$(( $i+1 ))
	fi
done

echo "Prime number"
