#!/bin/bash

#NEW GET ANIMALS 

colours=("red" "green" "blue" "yellow")

declare -A animals

animals=(["red"]="cardinal" ["green"]="frog" ["blue"]="lobster" ["yellow"]="canary")


echo "The red animal is a ${animals[red]}"
echo "The green animal is a ${animals[green]}"
echo "The blue animal is a ${animals[blue]}"
echo "The yellow animal is a ${animals[yellow]}"
echo "The animals hash contains a ${animals[@]}"
echo "The colours are ${!animals[@]}

read -p "Give me a number from 0 to 3:" num
colour=${colours[$num]}
animal=${animals[$colour]}