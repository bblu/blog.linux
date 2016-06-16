for i # for args set -f abc => for i in "$@"
do
	case $i in
	-f) echo $i
		;;
	abc|hello|world) echo $i
	*) echo "unknown option;$i"
		;; # this line ;; not necessary
	esac
done

