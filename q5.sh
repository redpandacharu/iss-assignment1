#!/bin/bash

read -p"enter the string " string

string_rev=`echo $string | rev`
echo $string_rev  
array=($(echo $string_rev | tr -d "\n" | od -An -t uC))

no=${#array[*]}
for((i=0; i< no; i++))
do
((array[i]++))
echo ${array[i]} | awk '{printf("%c",$1)}'
done
echo

string1=${string:0:${#string}/2}
string2=${string:${#string}/2}
output=`echo $string1 | rev`
echo "$output$string2"
