

# Check if a filename is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <demo.txt>"
    exit 1
fi

# Check if the file exists
if [ ! -f "$1" ]; then
    echo "File not found!"
    exit 1
fi

# Count lines, words, and characters
lines=$(wc -l < "$1")
words=$(wc -w < "$1")
chars=$(wc -c < "$1")

echo "File: $1"
echo "Lines: $lines"
echo "Words: $words"
echo "Characters: $chars"
