#!/bin/sh
if [ $# -ne 2 ]
then
echo "Invalid Input"
exit 0
else
    num1=$1
    num2=$2
    if [ $num1 -lt 1 ] || [ $num2 -lt 1 ]
    then
    echo "Input must be greater than 0"
    else
    for i in $(seq 1 $num1)
    do
        for j in $(seq 1 $num2)
        do
            echo -n "$i*$j=`expr $i \* $j` \t"
        done
        echo -n "\n"
    done
    fi
fi
