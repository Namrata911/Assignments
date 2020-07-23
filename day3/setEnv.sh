var=`env | grep USERSECRET`;
echo $var;
value=`echo $var | awk -F= '{print $2}'`;
echo $value;
if [ -z "$value" ] ;
then
var2="dH34xJaa23";
export USERSECRET=$var2;
echo "created USERSECRET";
else
echo "USERSECRET already exists.";
fi;
