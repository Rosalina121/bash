#!/bin/bash
if [ "$#" -ne 2 ]; then
	echo "Wrong number of parameters"
else
	cat $2 | while read line
	do
		if test -f ${line}; then
			echo "Plik ${line} juz istnieje. Pomijamy."
		else
			echo >$1/${line}
		fi
	done
fi
