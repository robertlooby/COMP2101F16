#!/bin/bash
#This script prints out a welcome message using varables and command substitution

export MYNAME="Robert Looby"
mytitle="the boss!"

planet= 'hostname'
weekday=$(date +%A)

echo "Welcome to my planet $planet, $mytitle $MYNAME!"
echo "Today is $weekday."