#!/bin/bash 
function palindrome(){
num=$1
# Storing the remainder
s=0
# Store number in reverse
# order
local rev=""
# Store original number
# in another variable
temp=$num

while [ $num -gt 0 ]
do
    # Get Remainder
    s=$(( $num % 10 ))
    # Get next digit
    num=$(( $num / 10 ))
    # Store previous number and
    # current digit in reverse
    rev=$rev$s
done

echo $rev

}


function checkPrime() {
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
                echo "$currentNumber is prime "
	else
		echo "$currentNumber is not prime "
        fi
}



read -p "Enter a number " num
checkPrime  $num
result=`palindrome $num`
echo "Palindrome(reverse in real sense) of $num is $result "
checkPrime $result
