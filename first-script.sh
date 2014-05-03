#!/bin/bash

#to clear the terminal
clear

#assignment of a string to a variable
user=BlackRat

#the $() reads the content within the brace as commands
#whoami shows the username
name=$(whoami)

#grep to locate the line of a specific word
#awk prints the column you select. Column 2 in this case
#cut command displays the string after(f2) the :
ip=$(ifconfig | grep 'Bcast' | awk '{print $2}' | cut -d ':' -f2)

#more command stuff
interface=$(ifconfig | grep 'HW' | awk '{print $1}')
mac=$(ifconfig | grep 'HW' | awk '{print $5}')

#echo prints the characters within the double quotes
#$ is used to denote the variables
echo "Hello, I am " $user "running as " $name
echo "Your IP is: " $ip
echo "Your interface is: " $interface
echo "Your MAC address is: " $mac

#read is used to accept user input and store in variable var
read -p "Enter user name: " var

#this is how an if statement looks like
if [ "$var" != "$user" ]; then
echo
echo
echo "You entered the wrong user name"
echo "It is NOT: " $var
echo
echo
fi

#the file permissions might need to be changed to run it
#use chmod 755 
#the permission is then set to read, write and execute by owner

#it is case sensitive and sensitive to space as well
#so if something goes wrong, don't forget to check those
#that's all I managed for now :)
