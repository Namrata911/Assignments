coin[0]="Head"
coin[1]="Tail"

declare -A singlet
for step in {1..20}
do
	flipCoin=$(( RANDOM%2 ))
	singlet[$step]=$flipCoin
done

headCount=0
tailCount=0
for toss in ${singlet[@]}
do
	if [ $toss -eq 0 ]
	then
		headCount=$(( $headCount+1 ))
	else
		tailCount=$(( $tailCount+1 ))
	fi
done

echo "Heads count : $headCount"
echo "Tails count : $tailCount"

headWinPercent=$(( ($headCount*100)/20 ))
tailWinPercent=$(( ($tailCount*100)/20 ))
echo "Head win percentage is : $headWinPercent"
echo "Tail win percentage is : $tailWinPercent"
if [ $headWinPercent -gt $tailWinPercent ]
then
	echo "So Head won"
elif [ $tailWinPercent -gt $headWinPercent ]
then
	echo "So Tail won"
else
	echo "Its a tie"
fi
