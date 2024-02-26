#!/bin/bash

mv links.txt links_alt.txt
python3 python_alt.py

while read line 
do 
#echo "$line"
echo $line
    STR=$( curl -L   "$line")

    SUB=aturwissenschaft
    if [[ "$STR" == *"$SUB"* ]]; then
        echo $line >>$SUB.txt
    fi
    SUB=MINT
    if [[ "$STR" == *"$SUB"* ]]; then
        echo $line >>$SUB.txt
    fi    
    SUB=Natur-
    if [[ "$STR" == *"$SUB"* ]]; then
        echo $line >>$SUB.txt
    fi

    SUB=Chemi
    if [[ "$STR" == *"$SUB"* ]]; then
        echo $line >>$SUB.txt
    fi

    SUB=chemi
    if [[ "$STR" == *"$SUB"* ]]; then
        echo $line >>$SUB.txt
    fi
    SUB=ython
    if [[ "$STR" == *"$SUB"* ]]; then
        echo $line >>$SUB.txt
    fi
done < links.txt

mv links.txt links_alt.txt