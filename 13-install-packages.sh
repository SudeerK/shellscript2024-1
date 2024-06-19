#!/bin/bash
# It will be executed as sh.13-install-packages.sh args

ID=$(id -u)
echo "Value of ID : $ID"
echo "Name of the script is : $0"
echo "Number of args passed : $#"
echo "Args passed are : $@"

R="\e[31m" #Red
G="\e[32m" #Green
Y="\e[33m" #Yellow
N="\e[0m"  #Normal color

if [ $ID -ne 0 ]
then 
echo -e "$R Error:: Not a root user $N"
exit 1
else 
echo "Logged in as root user"
fi

for i in (1..10)
do
echo " $i "
done
