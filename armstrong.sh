#!/bin/bash

# Ask the user for input
echo "Enter a number:"
read num

# Store the original number for comparison
original_num=$num

# Initialize sum to 0
sum=0

# Count the number of digits in the input number
n=${#num}

# Loop through the digits of the number
while [ $num -gt 0 ]
do
  # Get the last digit
  digit=$((num % 10))

  # Add the digit raised to the power of n to the sum
  sum=$((sum + digit**n))

  # Remove the last digit
  num=$((num / 10))
done

# Check if the sum equals the original number
if [ $sum -eq $original_num ]; then
  echo "$original_num is an Armstrong number."
else
  echo "$original_num is NOT an Armstrong number."
fi
