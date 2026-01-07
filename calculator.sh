

echo "MENU DRIVEN CALCULATOR"
echo "1. Add"
echo "2. Subtract"
echo "3. Multiply"
echo "4. Divide"
echo -n "Enter your choice: "
read ch

case $ch in
    1)
        echo -n "Enter two numbers: "
        read a b
        echo "Result = $((a + b))"
        ;;
    2)
        echo -n "Enter two numbers: "
        read a b
        echo "Result = $((a - b))"
        ;;
    3)
        echo -n "Enter two numbers: "
        read a b
        echo "Result = $((a * b))"
        ;;
    4)
        echo -n "Enter two numbers: "
        read a b
        if [ "$b" -eq 0 ]; then
            echo "Cannot divide by zero"
        else
            echo "Result = $((a / b))"
        fi
        ;;
    *)
        echo "Invalid choice"
        ;;
esac
