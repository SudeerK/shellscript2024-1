#!/bin/bash
Num1=$1
Num2=$2

SUM=$(($Num1+$Num2)) #why is it required to give this in multiple braces?

echo "Total sum of $Num1 and $Num2 is : $SUM"

echo "Script Name:: $0"
echo "Number of args passed :: $#"
echo "Args passed are :: $@"