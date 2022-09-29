#!/bin/sh
if [ $# -ne 2 ]
then
echo "Invalid Input"
else
    num1=$1
    num2=$2
    if [ $num1 -lt 1 ] || [ $num2 -lt 1 ]
    then
    echo "Input must be greater than 0"
    else
    for i in $(seq 1 $num1)
    do
    printline=""
        for j in $(seq 1 $num2)
        do
            printline="$printline$i*$j=`expr $i \* $j` "
        done
        echo $printline
    done
    fi
fi
