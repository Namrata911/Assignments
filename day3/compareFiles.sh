echo "Files will be compared.."
var=`diff original/original-file.sh updated/updated-file.sh`
if [ -z "$var" ] ;
then
echo "Files are same";
else
echo "Files are different and differences will be captured in cmpFile.patch file.." ;
diff -u original/original-file.sh updated/updated-file.sh > cmpFile.patch ;
echo "Taking backup of original file in and applying changes to original file" ;
patch -u -b original/original-file.sh -i cmpFile.patch;
mv original/original-file.sh.orig backup/original-file-backup.sh
echo "The original file has been backed up in backup/original-file.sh. and original-file.sh is updated successfully.";
fi
