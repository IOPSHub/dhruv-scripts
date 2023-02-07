#!/bin/bash

LOCATION=$1
FILECOUNT=$num_files
DIRCOUNT=$num_directories
SYMBOLIC=$num_symlinks
if [ "$#"! == "1" ]
then
    echo You have to give only one parameter.
exit 1
fi
while (( $# ))
    do
        echo You gave me $1
shift 
done
num_files=$(find $LOCATION -type f | wc -l)
num_directories=$(find $LOCATION -type d | wc -l)
num_symlinks=$(find $LOCATION -type l | wc -l)
#for d in $num_files
#do
 #  DIRCOUNT=$[$DIRCOUNT+1]
#done

#for f in $FILES
#do
 #  FILECOUNT=$[$FILECOUNT+1]
#done
#for l in $FILES
#do 
 #  SYMBOLIC=$[SYMBOLIC+1]
#done
#for item in $LOCATION
#do
#if [ -f "$item" ]
 #   then
  #       FILECOUNT=$[$FILECOUNT+1]
   # elif [ -d "$item" ]
    #    then
     #    DIRCOUNT=$[$DIRCOUNT+1]
   # elif [ -l "$item" ]
   #     then 
#	 SYMBOLIC=$[$SYMBOLIC+1]   
#fi
#done

echo "File count: " $num_files
echo "Directory count: " $num_directories
echo "Symbloic count: " $num_symlinks
