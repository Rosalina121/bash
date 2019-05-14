#!/bin/bash

if [ "$#" -ne 1 ]; then
	echo "Wrong number of parameters"
elif [ ! -f $1 ]; then
	echo "Parameter not a file"
else
	cat $1 | awk '{ gsub ("\/\/.*", ""); print }' | awk 'NF > 0 { print }' | awk '{ print NR-1 , $0 }' #| gawk '{ tekst = gensub ("[0-9] #include <([[:alnum:]]+)>", "g" , "\\1" , $0); print tekst }'
fi
