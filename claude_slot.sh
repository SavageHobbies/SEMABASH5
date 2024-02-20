#!/bin/bash

# Slot machine symbols
symbols=("Cherry" "Lemon" "Bell" "Bar" "Seven" "Diamond")

# Generate 3 random symbols
symbol1=${symbols[$((RANDOM % ${#symbols[@]}))]}
symbol2=${symbols[$((RANDOM % ${#symbols[@]}))]} 
symbol3=${symbols[$((RANDOM % ${#symbols[@]}))]}

# Print slots  
echo -e "\n$symbol1 $symbol2 $symbol3\n"

# Check for matches
if [[ $symbol1 == $symbol2 && $symbol2 == $symbol3 ]]; then
  echo "Jackpot!"
else
  echo "Try again!"
fi