#!/bin/bash
while getopts ":p:" option;
do
case $option in
p)
echo received -p $LOCATION
num_files=$(find $OPTARG -type f | wc -l)
num_directories=$(find $OPTARG -type d | wc -l)
num_symlinks=$(find $OPTARG -type l | wc -l)
;;
esac
done

echo "File count: " $num_files
echo "Directory count: " $num_directories
echo "Symbloic count: " $num_symlinks
