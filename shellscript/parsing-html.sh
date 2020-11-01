#!/bin/bash
#my first shell script almost all written by myself
if [ "$1" == "" ]
then
	echo "MODO DE USO"
	echo "$0 www.website.com"
else
wget $1
	echo -e "\e[1;31mBuscando hosts...\e[0m"
	echo " "
	grep href index.html | cut -d "/" -f 3 | grep "\." | cut -d '"' -f 1 | grep -v "<l" > websites
	echo -e "\e[1;31mResolvendo hosts...\e[0m"
	echo " "
	for url in $(cat websites);
	do host $url | grep "has address";
	done

rm index.html
rm websites

fi
