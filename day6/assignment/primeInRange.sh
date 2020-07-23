#!/bin/bash 
echo "Enter a range from which you want all prime numbers "
read -p "Enter lower bound (greater than 1 ) of range : " lower
read -p "Enter upper bound of range : " upper

check_prime() {
    	currentNumber=$1
    	flag=0
    	i=2
	limit=$(( $currentNumber-1 ))
	while [ $i -le $limit ]
	do
        	s=$(( $currentNumber%$i ))
        	if [ $s -eq 0 ]
        	then
			flag=1
        	fi
                i=$(( $i+1 ))
	done

	if [ $flag -eq 0 ]
        then
		echo $currentNumber
    	fi
}



for ((num=lower;num<=upper;num++))
do
check_prime $num
done
