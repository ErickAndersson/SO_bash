#!/bin/bash
for i in $( ls ); do
	echo $i
	extension="${i##*.}"
	if [ "$extension" = "gz" ]; then
		echo "es un .gz"
		gzip -d $i
	elif [ "$extension" = "bz2" ]; then
		echo "es un .bz2"
		bunzip2 $i
	elif [ "$extension" = "zip" ]; then
		echo "es un .zip"
		unzip $i
	elif [ "$extension" = "tar" ]; then
		echo "es un .tar"
		tar -xf $i
	else
		echo "El archivo no tiene una extension valida para descomprimir"	
	fi
done
