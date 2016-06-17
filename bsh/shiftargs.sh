#eg: sh shiftargs.sh -f /home/bblu/shiftargs.sh -v 1.0 -q -l -x

file= version= quiet= long=

while [ $# -gt 0 ];do
	case $1 in
	-f) file=$2
		echo "set file=$2"
		shift
		;;
	-v) version=$2
		echo "set version=$2"
		;;
	-q) quiet=true
		echo "set quiet"
		;;
	-l) long=true
		echo "set long"
		;;
	-*) echo "$0:$1: unrecognized option" >&2
		;;
	--) shift
		break
		;;
	*) break
		;;
	esac
	shift
done
	
