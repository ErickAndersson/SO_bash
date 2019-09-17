#!/bin/bash
choice=0
for i in $( find -size +100k ); do
	echo $i
	echo "Desea eliminar o comprimir este archivo? 0 para eliminar, 1 para comprimir"
	read choice
	if [ $choice = 0 ]; then
		echo "Archivo eliminado"
		echo $i >> log_ej3
	elif [ $choice = 1 ]; then
		echo "Archivo comprimido"
	else
		echo "Sos un pelotudo, flaco"
	fi
done 
