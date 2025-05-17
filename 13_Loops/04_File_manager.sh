
# ==============================
# Bash Script: File Manager Demo
# Loops: for, while, until, select
# ==============================

#Step1: Using for Loop To Create Folder
echo "Step1: Creating Folders!!!!"
for dir in Project1 Project2 Project3;
do
    mkdir -p "$dir"
    echo "Created the Directory: $dir"
done

echo

# Step 2: WHILE loop to check for folder existence
echo "Step 2: Verifying folders using while loop..."
count=1
while [ $count -le 3 ];do
    folder="Project$count"
    if [ -d "$folder" ]; then
       echo "✔️ $folder exists."
    else
        echo "❌ $folder is missing!"
    fi
    ((count++))
done

echo

# Step 3: UNTIL loop to simulate a file copy progress bar
echo "Step 3: Simulating file copy progress..."
progress=0
until [ $progress -ge 100 ]; do
    echo -ne "copying files: $progress%\r"
    ((progress+=20))
    sleep 1
done 
echo "Copying files: 100% ✅"

echo

# Step 4: SELECT loop - user menu
echo "Step 4: Select an option to continue"
select option in List_Files Create_File Delete_File Quit; do
    case $option in
        List_Files)
            echo "Listing all .txt files:"
            ls *.txt 2>/dev/null || echo "No .txt files found."
            ;;
        Create_File)
            read -p "Enter filename to create (.txt will be added): " fname
            touch "$fname.txt"
            echo "$fname.txt created."
            ;;
        Delete_File)
            read -p "Enter filename to delete (include extension): " delname
            if [ -f "$delname" ]; then
                rm "$delname"
                echo "$delname deleted."
            else
                echo "File does not exist."
            fi
            ;;
        Quit)
            echo "Exiting File Manager."
            break
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac
done

echo

echo "🟢 Script execution completed."


        




echo "🟢 Script execution completed."




