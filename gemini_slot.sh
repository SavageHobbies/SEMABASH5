#!/bin/bash

# Define symbols (add or remove to your preference)
symbols=( "" "" "" "" "" "" "" "" )

# Randomize seed for better randomness
RANDOM=$(cat /dev/urandom | tr -dc '0-9' | fold -w 32 | head -n 1)

# Generate three random symbols
symbol1=${symbols[$RANDOM % ${#symbols}]}
symbol2=${symbols[$RANDOM % ${#symbols}]}
symbol3=${symbols[$RANDOM % ${#symbols}]}

# Display the results
echo "    "
echo "  $symbol1  $symbol2  $symbol3  "
echo "    "

