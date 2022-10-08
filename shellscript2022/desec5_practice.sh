#!/bin/bash
if ["$1" == ""]
then
	echo -e "\e[1;31mDESEC SECURITY - PING SWEEP"
	echo -e "\e[0;97mUsage: $0 NETWORK"
	echo -e "\e[0;97mEx: $0 192.168.0"
else
echo -e "\e[1;31mPINGING THE NETWORK\e[0m"
for host in {1..254};
do
#ping -c1 $1.$host | grep "64 bytes" | cut -d ":" -f1 | cut -d " " -f4;
#ping -c1 $1.$host | grep "64 bytes" | cut -d " " -f4 | sed 's/.$//';
ping -c1 $1.$host | grep "64 bytes" | awk '{print $4}' | sed 's/.$//';
done
fi