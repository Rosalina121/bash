#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Wrong number of parameters"
else
	a=1
	for f in $1/*; do
		mv "$f" "${f%}.${a}"
		let "a += 1"
	done
fi
