#!/bin/bash

#ex 1: traffic lights
echo "What is the color of the traffic lights?"
read color
if [ "$color" == "green" ]
then
	echo -e "\e[1;32mGo forward\e[0m"
elif [ "$color" == "red" ]
then
	echo -e "\e[1;31mSTOP\e[0m"
else
	echo -e "\e[1;33mWAIT\e[0m"
fi

#ex 2: age
echo "What is your age?"
read age
if [ "$age" -ge "18" ]
then
	echo "YOU CAN DRIVE"
else
	echo "YOU CAN'T DRIVE"
fi

#ex 3: menu
echo "Did the client like the food?"
echo "1 - yes"
echo "2 - no"
read answer
case $answer in
"1")
	echo -e "\e[1;32mgood."
;;
"2")
	echo -e "\e[1;31mBAD, VERY BAD"
;;
esac
