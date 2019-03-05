#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Wrong number of parameters"
else
	for f in $1/*; do
		mv "$f" "${f%}.old"
	done
fi
