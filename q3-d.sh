#!/bin/bash
read -p "enter the file name (with extention) " file
let a=1
while read -r line;
do
no_word_in_line=`wc -w <<< "$line"`
echo " line no - $a: Count of words - $no_word_in_line"
let a++
done < $file

 
