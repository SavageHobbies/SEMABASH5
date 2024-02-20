#!/bin/bash

# Define the symbols for the slot machine
symbols=("🍒" "🍊" "🍇" "🍓" "🍉")

# Function to generate a random symbol
function generate_symbol() {
    local symbol_index=$((RANDOM % ${#symbols[@]}))
    echo "${symbols[$symbol_index]}"
}

# Function to play the slot machine
function play_slot_machine() {
    echo "Welcome to the Slot Machine!"
    echo "Press enter to play..."
    read -r

    # Generate three random symbols
    symbol1=$(generate_symbol)
    symbol2=$(generate_symbol)
    symbol3=$(generate_symbol)

    echo "[$symbol1] [$symbol2] [$symbol3]"

    # Check if all symbols are the same
    if [[ $symbol1 == $symbol2 && $symbol2 == $symbol3 ]]; then
        echo "Congratulations! You won!"
    else
        echo "Better luck next time!"
    fi
}

# Call the play_slot_machine function
play_slot_machine
#start trial