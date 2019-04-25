: '
	ls customize
'

if [ $# != 3 ] 
then
	echo " enter 3 column of your choice "
	exit
else
	if [ $1 -le 9 -a $2 -le 9 -a $3 -le 9 ] 
	then
		ls -l | cut -d" " -f$1,$2,$3
	else
		echo "enter b/w 1-9"
	fi
fi
echo "done"
