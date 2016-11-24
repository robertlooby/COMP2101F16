#!/bin/bash

#Create a script to prompt the user for 2 numbers. 
#Perform each of the 5 arithmetic operations on the numbers,
#and display the results in a user-friendly way. Name it arithmeticdemo.sh.

read -p "Give me 2 numbers, seperated by a space: " firstnum secondnum

cat <<EOF
This is what I learned in class today.

sum=$(( firstnum + secondnum))
$firstnum minus $secondnum equals $((firstnum - secondnum))
$firstnum times $secondnum equals $((firstnum * secondnum))
$firstnum devided by $secondnum equals $((firstnum / secondnum))
$firstnum devided by $secondnum equals $((firstnum % secondnum)) 

with a remainer of $((firstnum % secondnum))

EOF