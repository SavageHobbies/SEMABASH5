#!/bin/bash

# Define an array of symbols
SYMBOLS=("Cherry" "Lemon" "Orange" "Bell" "Seven" "Bar")

# Generate three random numbers between 0 and the length of the SYMBOLS array
REEL1=${SYMBOLS[$RANDOM % ${#SYMBOLS[@]}]}
REEL2=${SYMBOLS[$RANDOM % ${#SYMBOLS[@]}]}
REEL3=${SYMBOLS[$RANDOM % ${#SYMBOLS[@]}]}

# Display the outcome
echo "Slot Machine Spin:"
echo "$REEL1 | $REEL2 | $REEL3"

# Check for winning conditions
if [[ $REEL1 == $REEL2 && $REEL2 == $REEL3 ]]; then
  echo "Congratulations! You've hit the jackpot with three of a kind!"
elif [[ $REEL1 == $REEL2 || $REEL2 == $REEL3 || $REEL1 == $REEL3 ]]; then
  echo "Well done! You've got a pair!"
else
  echo "No match this time. Better luck next spin!"
fi
