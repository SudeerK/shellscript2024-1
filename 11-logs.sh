#!/bin/bash

echo "Script Name is : $0"

ID=$(id -u)
echo "ID is : $ID"
TimeStamp=$(date +%F-%H-%M-%S)

echo "Logged Time is : $TimeStamp"