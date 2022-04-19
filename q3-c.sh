#!/bin/bash
read -p "enter the file name (with extention) " file
words=`wc -w $file`
echo "no of words are $words"


