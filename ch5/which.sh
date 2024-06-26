#!/bin/sh
# which cmd:  which cmd in PATH is executed, final version

opath=$PATH
PATH=/bin:/usr/bin

case $# in
	0)	echo 'Usage: which command' 1>&2; exit 2
esac
for i in `echo $opath | sed 's/^:/.:/
			     s/::/:.:/g
			     s/:$/:./
			     s/:/ /g'`
do
	if test -f $i/$1	# this is /bin/test
	then			# or /usr/bin/test only
		echo $i/$1
		exit 0		# found it
	fi
done
exit 1				# not found

