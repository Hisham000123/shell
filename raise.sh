#!/bin/bash

# Ask the user for the base number
read -p "Enter the base number: " base

# Ask the user for the exponent
read -p "Enter the exponent: " exponent

# Calculate power using bc with math library (-l) for decimal and negative exponents
result=$(echo "$base ^ $exponent" | bc -l)


echo "$base raised to the power of $exponent is: $result"
