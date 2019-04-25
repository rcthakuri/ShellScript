: '
	auth
'

if [ $# -le 0 ]
then
	exit
else
	tar -cvf backup.tar $1
	shift 1
	for arg
	do
		tar -rvf backup.tar $arg
	done
fi
echo 'done!'
