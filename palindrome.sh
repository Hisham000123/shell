

# Read input string
echo "Enter a string:"
read str

# Reverse the string
rev_str=$(echo "$str" | rev)

# Display reversed string
echo "Reversed string: $rev_str"

# Check for palindrome
if [ "$str" = "$rev_str" ]; then
    echo "The string is a palindrome."
else
    echo "The string is not a palindrome."
fi
