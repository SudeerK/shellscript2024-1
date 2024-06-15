#!/bin/bash

Number=$1
<<comment
if (($Number > 100))
then
echo "entered value $Number is greater than 100"
else 
echo " entered value $Number is less than 100"
fi
comment

if [ $Number gt 50 ]
then
echo "$Number is greater than 50"
else
echo "$Number is less than 50"
fi