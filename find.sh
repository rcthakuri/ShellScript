: '
	mathh with file
'
read -p "Enter mattch string" pattern
read -p "file name" fname

if [ -f $fname ] 
then
	result=$(grep $pattern $fname)

	if [ -n "$result" ]
	then
		echo "found"
		echo $result
	else
		echo "not found"
	fi
else
	echo "invalid file name"
fi
echo "done"
