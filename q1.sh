#!/bin/bash

awk NF quotes.txt > ans.txt

awk '!a[$0]++' ans.txt 

rm ans.txt

