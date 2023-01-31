#!/bin/bash
First_Argument=$1
Second_Argument=$2
result=$result
echo "What option do you want? "
echo "option (a or A) for Addition."
echo "option (s or S) for Subtraction."
echo "option (m or M) for Multiply."
echo "option (d or D) for Division."
read option
       case $option in
        "a" | "A")
        let result="$1 + $2"
        echo $1 + $2 = $result
        ;;
        "s" | "S") 
        let result="$1 - $2"
        echo $1 - $2 = $result
        ;;
        "m" | "M")
        let result="$1 * $2"
        echo $1 * $2 = $result
        ;;
        "d" | "D")
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
