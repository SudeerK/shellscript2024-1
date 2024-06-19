#!/bin/bash
# It will be executed as sh.13-install-packages.sh args

ID = $(id -u)
R="\e[31m" #Red
G="\e[32m" #Green
Y="\e[33m" #Yellow
N="\e[0m"  #Normal color

if [ $ID -ne 0 ]
then 
echo -e "$R Error:: Not a root user $N"
fi
