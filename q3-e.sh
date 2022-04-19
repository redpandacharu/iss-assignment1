#!/bin/bash
read -p "enter the file name (with extention) " file
grep -wo '[[:alnum:]]\+' $file | sort | uniq -cd  | awk '{print "Word - "$2" :  Count of repitition - "$1""}'

 
