PWD=`pwd`;
read folderName;
DIR="$PWD/$folderName";
if [ -d "$DIR" ]; then
  # Control will enter here if $DIRECTORY exists.
	echo "Folder $folderName already exists.";
else
	echo "Folder does not exist and will be created now...";
	mkdir $folderName;
	echo "created foldrt $folderName";
fi

