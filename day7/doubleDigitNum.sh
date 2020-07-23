#!/bin/bash
counter=0
for num in {1..100}
do
	if [ $(( $num%11 )) -eq 0  ]
	then
			arr[((counter++))]=$num
	fi
done

echo "Numbers in which digits are alike are : ${arr[@]} "
