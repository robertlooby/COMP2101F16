#!/bin/bash

#Create an array using the output of ifconfig which has the names of the network interfaces in it. 
#Use those names to extract the ip addresses of the interfaces, also using ifconfig output. 
#Also parse the output of route -n to display the ip address of the default gateway. Name this script showinterfaces.sh.

interfacenames=(`ifconfig |grep '^[a-zA-Z]' |awk '{print $1}'`)

echo "Interfaces names found: ${interfacenames[@]}"

eth0ip=`ifconfig eth0 | 
grep 'inet addr' | 
sed -e 's/ *inet addr://' | 
sed -e 's/ *inet addr://' | 
sed -e 's/ .*//'

figure out out -n 

line 0.0.0.0 