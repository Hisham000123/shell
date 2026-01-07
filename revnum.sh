

echo -n "Enter a number: "
read num

reverse=0
temp=$num

while [ $temp -gt 0 ]
do
    digit=$(( temp % 10 ))       # get last digit
    reverse=$(( reverse * 10 + digit ))  # append digit
    temp=$(( temp / 10 ))        # remove last digit
done

echo "Reverse of $num is $reverse"
