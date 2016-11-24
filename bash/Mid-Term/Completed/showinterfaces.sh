#!/bin/bash

#Create an array using the output of ifconfig which has the names of
#the network interfaces in it. Use those names to extract the ip 
#addresses of the interfaces, also using ifconfig output. 
#Parse the output of route -n to display the ip address of the default gateway.

declare -a ips

interfacenames=(`ifconfig |grep '^[a-zA-Z]'|awk '{print $1}'`)
ips[0]=`ifconfig ${interfacenames[0]} | grep 'inet addr' | sed -e 's/  *inet addr://'| sed -e 's/ .*//'`
ips[1]=`ifconfig ${interfacenames[1]} | grep 'inet addr' | sed -e 's/  *inet addr://'| sed -e 's/ .*//'`

gatewayip=`route -n|grep '^0.0.0.0 '|awk '{print $2}'`

cat <<END
Interface ${interfacenames[0]} has address ${ips[0]}
Interface ${interfacenames[1]} has address ${ips[1]}
My default gateway is $gatewayip
END

trap '' 2
while true 
do
  clear
  echo "---------------------------------------------------"
  echo "                Show Interfaces "
  echo "                  Menu Choices "
  echo "---------------------------------------------------"
  echo "    1:  Enter 1 to show etho0 interface address  "
  echo "    2:  Enter 2 to show Local Loopback interface address "
  echo "    3:  Enter 3 to show gateway address "
  echo "    4:  Enter q to exit the menu "
  echo -e "\n"
  echo -e "Enter a selection \c"
  read answer
  case "$answer" in
    1) echo  "Interface ${interfacenames[0]} has address ${ips[0]}" ;;
    2) echo  "Interface ${interfacenames[1]} has address ${ips[1]}" ;;
    3) echo  "My default gateway is $gatewayip" ;;
    q) exit ;;
  esac
  echo -e "Enter return to continue \c"
  read input

done

