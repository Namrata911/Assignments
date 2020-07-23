arr[0]=1
arr[2]=2
arr[3]=3
arr1[0]="ok"
arr2[1]="fine"
declare -A myDict

myDict["Aug"]=${arr[@]}

echo ${myDict[@]}

declare -A months

num=1;
for month in {JAN,FEB,MAR,APR,MAY,JUN,JUL,AUG,SEP,OCT,NOV,DEC}
do
	months[$num]=$month
	num=$(( $num+1 ))
done

echo "${months[@]}"
