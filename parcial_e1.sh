#!/bin/bash

text=$1
touch lovecraft.txt
touch lovecraft_u.txt
touch lovecraft_tf.txt
tr -d .,!-';' < $text | tr -s " " " " |tr A-Z a-z |tr " " "\n" | sort > lovecraft.txt
cat lovecraft.txt | uniq > lovecraft_u.txt

wc -l lovecraft.txt
u_words=$( wc -l < lovecraft_u.txt ) 

#getting the greater frequency of the words
max=0
for ((i=1; i <= $u_words; i++))
do
    word=$( head -$i lovecraft_u.txt | tail -1 )
    word_freq=$( grep ^$word$ lovecraft.txt -c )
    echo "Max: " $max
    echo "Word: " $word
    echo "Frequency: " $word_freq
    if [ $max -lt $word_freq ]; then
        max=$word_freq
        echo "New max: " $max
    fi
done

#getting the term frequency
for ((i=1; i <= $u_words; i++))
do
    word=$( head -$i lovecraft_u.txt | tail -1 )
    word_freq=$( grep ^$word$ lovecraft.txt -c )
    word_tf=$(($word_freq / $max))
    echo "Word: " $word
    echo "Frequency: " $word_freq
    echo "Term Frequency: " $word_tf
    echo $word $( echo " Term Frequency: " $word_tf ) >> lovecraft_tf.txt
done
