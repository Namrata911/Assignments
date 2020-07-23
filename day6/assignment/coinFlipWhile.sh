headCount=0
tailCount=0
while [ $headCount -lt 11 ] || [ $tailCount -lt 11 ]
do
	echo "Let's flip the coin "
	if [ $((RANDOM%2)) -eq 0 ]
	then
			echo "This is head "
			headCount=$(( $headCount+1 ))

	else
			echo "This is tail"
			tailCount=$(( $tailCount+1 ))
	fi
done

if [ $headCount -eq 11 ]
then
		echo "Heads won 11 times"
else
		echo "Tails won 11 times"
fi
