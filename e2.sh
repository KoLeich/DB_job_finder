#!/bin/bash

export A=2

bash aufraumer.sh
mv ython.txt ython_alt.txt
mv aturwissenschaft.txt aturwissenschaft_alt.txt
mv Chemi.txt Chemi_alt.txt
mv Chemi.txt Chemi_alt.txt
mv MINT.txt MINT_alt.txt
mv Natur-.txt Natur-_alt.txt
rm links_z.txt
touch links_z.txt
declare -i x=10
x=$x+1

var=$( cat Seiten/Seite10000.html |wc )
if [ $var = true ] ; then
    echo 'Be careful not to fall off!'
fi
echo $A
echo $x
echo $b

str="Seiten/Seite10000.html"
str="Seiten/Seite4.html"
size="$(wc -c <"$str")"
echo $size

if [ $size = 0 ] ; then
    echo 'Be careful not to fall off!';
    else
    echo Doch nicht;
fi


donevar=false
x=0
while [ $donevar = false ]
do
    bash e1.sh $x
    str="Seiten/Seite$x.html"
    python3 test.py $x    
    size="$(wc -c <"$str")"

#if [ $size = 0 ] ; then
if [ $size = 0 ] ; then
    donevar=true
    else
  x=$(( $x + 1 ))
fi

done
bash e3.sh
