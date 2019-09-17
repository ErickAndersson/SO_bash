#!/bin/bash
ls > aux_txt
touch out 
for ((i=$(wc -l < aux_txt); i>0; i--)); do
    aux_file=$(head -$i aux_txt | tail -1)   
    new_name="$(echo $aux_file | tr A-Z a-z | tr " " "_")"
    if [ "$aux_file" != "$new_name" ]; then
        mv $aux_file $new_name
        echo $aux_file >> out
    fi
done
