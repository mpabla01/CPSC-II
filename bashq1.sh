#!/usr/bin/env bash

echo "a) The first 3 of the Arrival Delay data for the flights that depart from San Francisco Airport: "

csvcut -c 15,17 2007.csv | csvgrep -c Origin -m SFO | csvcut -c 1 | head -4 > first3sfo.csv

csvlook first3sfo.csv

echo "b) The top 3 destination airports with the count of arriving planes: "

csvcut -c 18 2007.csv | sort | uniq -c | sort -r -n | awk 'BEGIN {print "Dest","Count"};{print $2","$1}' | head -4 > top2dest.csv

csvlook top3dest.csv


echo "Manpreetkaur Amarjitsingh Pabla 100352666"
