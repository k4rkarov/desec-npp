#!/bin/bash
#for ip in $(cat arquivo.txt); poderia ser tbm!
for ip in $(seq 100 120);
do
echo 172.16.1.$ip;
done
