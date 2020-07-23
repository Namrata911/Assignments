#!/bin/bash
declare -A myDict
for step in {1..4}
do
	read -p "Enter a key : " key
	read -p "Enter a value : " value
	myDict[$key]=$value
done

echo "All keys are : " ${!myDict[@]}
echo "All values are : " ${myDict[@]}

for key in ${!myDict[@]}
do
	echo $key " : " ${myDict[$key]}
done
