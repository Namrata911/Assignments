#!/bin/bash
read -p "Enter a number for which you want Harmonic number : " num
harmonicNum=""
for ((i=1;i<=$num;i++))
do
   harmonicNum="$harmonicNum(1/$i)"
	if [ $i -lt $(( $num )) ]
	then
		harmonicNum="$harmonicNum+"
	fi
done
echo "The Harmonic number till $num is : $harmonicNum"


