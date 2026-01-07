

echo "Enter a number:"
read n

echo "Prime numbers up to $n:"

i=2
while [ $i -le $n ]
do
    j=2
    flag=0

    while [ $j -lt $i ]
    do
        if [ $((i % j)) -eq 0 ]; then
            flag=1
            break
        fi
        j=$((j + 1))
    done

    if [ $flag -eq 0 ]; then
        echo $i
    fi

    i=$((i + 1))
done
