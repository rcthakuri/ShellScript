:' 
	find symlinnk
'

read -p "Enter fil name: " fname

if [ -f $fname ]
then
	list=$(ls -Rl | grep "^l.*$fname" | cut -d" " -f13)

	if [ -n "$list" ]
	then
		echo "Symlinks are: "
		echo $list
	else
		echo "no symlinks found"
	fi
else
	echo "invalid file name"
fi
echo 'done'
