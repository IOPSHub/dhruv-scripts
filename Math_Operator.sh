#!/bin/bash
First_Argument=$1
Second_Argument=$2
result=$result
echo "What Operation do you want? (+,-,*,/) "
read option
       case $option in
        "+")
        let result="$1 + $2"
        echo $1 + $2 = $result
        ;;
        "-") 
        let result="$1 - $2"
        echo $1 - $2 = $result
        ;;
        "*")
        let result="$1 * $2"
        echo $1 * $2 = $result
        ;;
        "/")
        let result="$1 / $2"
        echo $1 / $2 = $result
        ;;
        *)
        echo "invalid option "
        ;;
        esac
if [ "$#" != "2" ]
then
    echo You have to give two parameter

else
        echo You gave me $1 and $2
fi
