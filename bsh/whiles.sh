pattern=/*/
string=/home/bblu/repo/blog/bsh/while.s.sh

while [ -n "$string" ]
do
	string=${string#pattern}
	echo $string
done
