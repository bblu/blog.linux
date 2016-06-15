for i # for args set -f abc
do
	case $i in
	-f) echo $i
		;;
	abc) echo $i
	esac
done

