#!/bin/bash

# Zadanie 16 - porównanie zawartości katalogu i pliku

if [ "$#" -ne 2 ]; then
	echo "Wrong number of parameters"
elif [ ! -d $1 ]; then
	echo "1st parameter not a directory"
elif [ ! -f $2 ]; then
	echo "2nd parameter not a file"
else
	arrfromdir=()
	arrfromfil=()

	for entry in `ls -a $1`; do
		arrfromdir+=" ${entry}"
	done

	for entry in `cat $2`; do
		arrfromfil+=" ${entry}"
	done

	echo $arrfromfil
	echo $arrfromdir

	for item in ${arrfromfil[@]}; do
  		if [[ $arrfromdir =~ " $item " ]]; then
    	result+=($item)
  		fi
	done

	echo ${result[@]}

	for del in ${result[@]}; do
   		dirarraywo=("${arrfromdir[@]/$del}")
	done

	for del in ${result[@]}; do
   		filarraywo=("${arrfromfil[@]/$del}")
	done

	echo "Pliki w katalogu, których nie ma w pliku $dirarraywo"
	echo "Pliki w pliku, których nie ma w katalogu $filarraywo"

fi
