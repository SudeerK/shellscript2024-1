#!/bin/bash
Num1=$1
Num2=$2

SUM=$(($Num1+$Num2)) #why is it required to give this in multiple braces?

echo "Total sum is : $SUM"