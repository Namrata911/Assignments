for file in `ls *.log.1`
do
	echo "File to be renamed $file"
	now=$(date +"%d%m%Y")
        firstPart=`echo $file | awk -F. '{print $1}'`
        secondPart=`echo $file | awk -F. '{print $2}'`
	fileName="${firstPart}-${now}.${secondPart}"
	echo $fileName
	cp $file $fileName
done
