
#Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
	echo "Usage: $0 file1 file2"
	exit 1
fi


#Asign  the inpput to variable
file1=$1
file2=$2
:wq
#Check if both files exist
if [ ! -f "$file1" ]; then
	echo "Error: file $file1 doesnt exist."
	exit 1
fi


if [ ! -f "$file2" ]; then
	echo "Error: file $file2 doesnt exit."
	exit 1
fi

echo

# Display file permissions for both files
echo "Permissions for $file1:"
[ -r "$file1" ] && echo "Readable" || echo "Not Readable"
[ -w "$file1" ] && echo "Writable" || echo "Not Writable"
[ -x "$file1" ] && echo "Executable" || echo "Not Executable"

echo

echo "Permissions for $file2:"
[ -r "$file2" ] && echo "Readable" || echo "Not Readable"
[ -w "$file2" ] && echo "Writable" || echo "Not Writable"
[ -x "$file2" ] && echo "Executable" || echo "Not Executable"

echo

#Compare the files using diff
if diff -q "$file1" "$file2" > /dev/null; then
	echo "The files '$file1' and '$file2' are identical."
else
	echo "The files '$file1' and '$file2' are different."
	echo "Differences:"
	diff "$file1" "$file2"
fi

