
# Define the directory to back up
directory_to_backup=$1

# Check if the directory exists
if [ ! -d "$directory_to_backup" ]; then
  echo "Error: Directory $directory_to_backup does not exist."
  exit 1
fi

# Get the current timestamp
timestamp=$(date +%Y-%m-%d_%H-%M-%S)

# Define the backup file name
backup_file="${directory_to_backup}_backup_$timestamp.tar.gz"

# Compress the directory
tar -czf "$backup_file" "$directory_to_backup"
 
# Check status
status=$?


# Output the backup file name
if [ $status -eq 0 ]; then
  echo "$backup_file" 
  exit 0
else
  exit 1
fi