#!/bin/bash


while read -r line;
do
if [ ! -z "$line" ]
then
first_=`echo $line | sed 's/~.*//'`
last=`echo $line | sed 's/.*~//'`
first=`echo $first_ | sed -r 's/(^|$)/"/g'`
echo $last "once said", $first >> speech.txt
fi
done < quotes.txt
