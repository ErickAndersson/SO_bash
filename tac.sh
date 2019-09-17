#!/bin/bash
lines=$(cat 1c | wc -l)
while [ $lines -gt 0 ]; do
	head -$lines 1c | tail -1 >> 1c_aux
	let lines=lines-1	
done
cp 1c_aux 1c
rm 1c_aux
