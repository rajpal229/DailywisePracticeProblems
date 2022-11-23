for files in *.log
do
	foldername=`echo $files | awk -F. '{print $1}'`;
	filename=`echo $files | awk -F. '{print $2}'`;
	echo $files;
	echo $foldername;
	printf "\n";
	if [ -d $foldername ]
	then
		rm -r $foldername;
	fi
	mkdir $foldername;
	today=`date +%d-%m-%Y`;
	mv $files "$foldername-$today.$filename";
	cp "$foldername-$today.$filename" $foldername/"$foldername-$today.$filename";
done
