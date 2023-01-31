#!/bin/bash

LOCATION=$1
FILECOUNT=0
DIRCOUNT=0

if [ "$#" == "1" ]
then
    echo You have to give at least one parameter.
exit 1
fi
while (( $# ))
    do
        echo You gave me $1
shift 
done

DIRS=$(find $LOCATION -type d)
FILES=$(find $LOCATION -type f)

for d in $DIRS
do
   DIRCOUNT=$[$DIRCOUNT+1]
done

for f in $FILES
do
   FILECOUNT=$[$FILECOUNT+1]
done

for item in $LOCATION
do
if [ -f "$item" ]
    then
         FILECOUNT=$[$FILECOUNT+1]
    elif [ -d "$item" ]
        then
         DIRCOUNT=$[$DIRCOUNT+1]
fi
done

echo "File count: " $FILECOUNT
echo "Directory count: " $DIRCOUNT
