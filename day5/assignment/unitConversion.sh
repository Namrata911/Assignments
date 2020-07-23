echo "Enter your choice from the following options : "
printf "1.Feet to Inch \n2.Feet to Meter \n3.Inch to Feet \n4.Meter to Feet\n"
read choice
case $choice in
1)
	read -p "Enter the feet to convert to Inches" ft
	inches=$(( $ft*12 ))
	echo "$ft feet are equal to $inches inches"
;;
2)
	read -p "Enter feet to convert into meters " ft
	meter=$(( $ft/3 ))
	echo "$ft feet are equal to $meter meter"
;;
3)
	read -p "Enter the inches you want to convert into ft" inches
	ft=$(( inches/12 ))
	echo "$inches inches are equal to $ft ft"
;;
4)
	read -p "Enter meters to convert into feet" meter
	feet=$(( $meter*3 ))
	echo "$meter meters are equal to $feet feet"
;;
*)
	echo "Bad choice"
;;
esac

