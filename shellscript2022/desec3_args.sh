#!/bin/bash
if ["$1" == ""]
then
	echo -e "\e[1;31mDESEC SECURITY"
	echo -e "\e[0;97mUsage: $0 IP PORT"
	echo -e "\e[0;97mEx: $0 192.168.0.28 8080"
else
	echo -e "\e[1;31mExploring  host $1 on port $2"
fi
