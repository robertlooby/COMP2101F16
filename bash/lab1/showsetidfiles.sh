#!/bin/bash
#Display a listing of all the setuid and setgid files in the /usr/ filesystem

echo "SETUID Files in /usr"
echo "--------------------"
find /usr -type f -perm 4000 -ls

echo 
echo "SETUID Files in /usr"
echo "--------------------"
find /usr -type f -perm 2000 -ls