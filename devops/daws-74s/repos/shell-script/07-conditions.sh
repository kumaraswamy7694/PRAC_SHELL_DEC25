#!/bin/bash
#check if the number is greater that 10 or not
NUM=$1
if [ $NUM -gt 10]  #if starting the conditon
then 
    echo " $NUM is greater than 10"
else
    echo "$NUM is less than or equal to 10"
fi # ending the conditon 