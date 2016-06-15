#! /bin/sh
# ch5.4 count the word frequency of a input file
# usage: wfreq [n] //n=10

tr -cs A-Za-z\' '\n'|
	tr A-Z a-z | sort |
		uniq -c |
			sort -k1,1nr -k2 |
				sed ${1:-10}q

