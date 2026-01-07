

# Read the number of Fibonacci numbers to generate
echo "Enter the number of Fibonacci numbers:"
read n

# Initialize the first two Fibonacci numbers
a=0
b=1

# Print the Fibonacci numbers
for (( i=0; i<n; i++ ))
do
    if [ $i -eq 0 ]; then
        echo -n "$a "
    elif [ $i -eq 1 ]; then
        echo -n "$b "
    else
        c=$((a + b))   # Calculate next Fibonacci number
        echo -n "$c "
        a=$b           # Move a to b (previous second number)
        b=$c           # Move b to c (new second number)
    fi
done

echo
