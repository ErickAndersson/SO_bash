#!/bin/bash
touch classes
aux=0
ls -R >> files
for i in $( ls -R ); do
	echo "Nombre: " $i
	extension="${i##*.}"
	echo "Extension: " $extension
	if [ $extension = "java" ]; then
		if [ "$(grep -c $i classes)" = "0" ]; then
			let aux=aux+1
			echo $i >> classes	
		fi
	fi	
done
echo $aux >> amount
