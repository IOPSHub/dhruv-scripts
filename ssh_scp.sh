#!/bin/bash
while [ 1 ]
do
echo "1 - ssh"
echo "2 - scp"
echo "3. Exit"
echo "Enter Your Choice"
read option
case $option in
1) echo "Please Enter Remote Ip Address"
read ip
   echo "Please Enter The User Name"
read user
   echo "$user@$ip password:"
read pass
  ssh  "$user@$ip"
  $pass
echo "Login to Remote server completed" ;;
2) echo "Please Enter You Source Directory"
read s
   echo "Please Enter your User Name"
read n
   echo "Please Enter Ip Address"
read a
   echo "Please Enter Destination File Location"
read d
   #echo "$n@$a password:"
  scp $s $n@$a:$d
  #$secu
echo "File Upload to Remote Serever Completely" ;;
3) exit;;
*) echo "Invalid option";;
esac
done