for file in `ls var/log/*.txt`
do
	var=`grep -o -i systemd $file | wc -l`
	if [ $var != 0 ] ;
	then
	echo "filename :$file count : $var ";
	fi;
done
