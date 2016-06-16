string=aaaaa

while [ -n "$string" ];do
	len=${#string}
	if [ $(( len % 2 )) -eq 1 ];then
		string=${string#a}
		echo "remove 1:\c"
	else
		string=${string#aa}
		echo "remove 2:\c"
	fi
	echo $string
	sleep 1
done
