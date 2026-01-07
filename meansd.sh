

echo -n "Enter three numbers: "
read a b c
  # Calculate mean (with 2 decimal points)
mean=$(echo "scale=2; ($a + $b + $c)/3" | bc)

# Calculate squared deviations
sq1=$(echo "($a - $mean)^2" | bc -l)
sq2=$(echo "($b - $mean)^2" | bc -l)
sq3=$(echo "($c - $mean)^2" | bc -l)

# Variance
variance=$(echo "($sq1 + $sq2 + $sq3)/3" | bc -l)

# Standard deviation
sd=$(echo "scale=2; sqrt($variance)" | bc -l)

# Display results
echo "Mean = $mean"
echo "Standard Deviation = $sd"
