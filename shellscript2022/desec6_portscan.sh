#!/bin/bash
if ["$1" == ""]
then
	echo -e "\e[1;31mDESEC SECURITY - PORTSCAN NETWORK"
	echo -e "\e[0;97mUsage: $0 NETWORK PORT"
	echo -e "\e[0;97mEx: $0 192.168.0 80"
else
echo -e "\e[1;31mACTIVE HOSTS ON THE NETWORK WITH PORT $2 OPEN:\e[0m"
for ip in {1..254};
do
sudo hping3 -S -p $2 -c 1 $1.$ip 2> /dev/null | grep "flags=SA" | cut -d " " -f2 | cut -d "=" -f2;
done
fi
