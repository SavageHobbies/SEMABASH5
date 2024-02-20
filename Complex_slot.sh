#!/bin/bash

# Define the array of characters
characters=("Harley Quinn" "Deadshot" "Joker" "Katana" "Captain Boomerang" "Enchantress")

# Function to generate a random character
function generateRandomCharacter() {
    local randomIndex=$((RANDOM % ${#characters[@]}))
    echo "${characters[randomIndex]}"
}

# Function to display the slot machine
function displaySlotMachine() {
    echo "-------------------------"
    echo "|   ${1}   |   ${2}   |   ${3}   |"
    echo "-------------------------"
}

# Function to check if all characters are the same
function checkWin() {
    if [[ $1 == $2 && $2 == $3 ]]; then
        echo "Congratulations! You won the bonus feature!"
        # Add your bonus feature code here
    else
        echo "Sorry, try again!"
    fi
}

# Main game loop
while true; do
    # Generate random characters for each slot
    slot1=$(generateRandomCharacter)
    slot2=$(generateRandomCharacter)
    slot3=$(generateRandomCharacter)

    # Display the slot machine
    displaySlotMachine $slot1 $slot2 $slot3

    # Check if the player won
    checkWin $slot1 $slot2 $slot3

    # Ask the player if they want to play again
    read -p "Play again? (y/n): " choice
    if [[ $choice != "y" ]]; then
        break
    fi
done
