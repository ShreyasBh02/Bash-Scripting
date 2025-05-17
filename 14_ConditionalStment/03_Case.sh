

choice=4

case $choice in
    1) echo "Today's date is: $(date)" ;;
    2) echo "Files in the current directory:"
       ls ;;
    3) echo "Current user: $(whoami)" ;;
    4) echo "Exiting..."
       exit ;;
    *) echo "Invalid option. Please choose a valid number." ;;
esac
