#!/bin/bash
trap ' echo " Control-C Detected, You shall not pass " ' SIGINT 

trap ' echo " You shall pass "; exit 0 ' SIGQUIT


 # until [ $SIGINT -gt 1 ]; do
  read  -p " How long shall I wait? " secs

while [ $secs -gt 0 ]; do
   echo -ne "$secs\r"
   sleep 1
   : $((secs--))

done

exit 0

