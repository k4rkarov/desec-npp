#!/bin/bash
echo "DESEC CLASS"

#ex 1: commands inline or on next line
echo "System has been up for"
uptime -p
echo "System has been up for" $(uptime -p) #same thing as above, but inline

#ex 2: variables
ipf=192.168.0.1
echo "Searching on host:" $ipf

#ex 3: user input info
echo "Type the ip:"
read ip
echo "Searching on host:" $ip

#ex 4: fixed and user input together
port=80
echo "Searching on host $ip in port $port"

#ex 5: using variables and linux commands together
echo "Type the ip:"
read ip
echo -e "\e[1;31mPinging on  $ip IP:\e[0m"
ping -c1 $ip

#PRACTICE
echo -e "\e[1;31mService to be started:\e[0m"
read var1
service $var1 restart
echo -e "\e[1;31mActive services:\e[0m"
ps aux | grep $var1
echo -e "\e[1;31mOpened ports:\e[0m"
netstat -nlpt
