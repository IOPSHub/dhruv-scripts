#!/bin/bash

FILECOUNT=$num_files
DIRCOUNT=$num_directories
SYMBOLIC=$num_symlinks
while getopts ":p:" option;
do
case $option in
p)
echo received -p
LOCATION=$p
;;
esac
done
num_files=$(find $LOCATION -type f | wc -l)
num_directories=$(find $LOCATION -type d | wc -l)
num_symlinks=$(find $LOCATION -type l | wc -l)

echo "File count: " $num_files
echo "Directory count: " $num_directories
echo "Symbloic count: " $num_symlinks
