#!/bin/bash
read -p "enter the input separated by commas " line
array=($(echo $line | sed 's/,/ /g')) 
let no=${#array[*]}

for((k=0; k < no; k++))
do
let no_=$((no-k-1))
	for((i=0; i < no_; i++))
	do
	j=$(( $i + 1 ))
	if test "${array[$i]}" -gt  "${array[$j]}"
	then 
	
	temp=${array[$i]}
	array[$i]=${array[$j]}
	array[$j]=$temp
	fi
	done
done

echo "${array[*]}"


