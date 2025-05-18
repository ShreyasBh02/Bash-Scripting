#!/bin/bash
Cpu_threshold=80
mem_thershold=20

#Create the log file
log_file="system_helath.log"
timeStamp=$(date +"%Y-%m-%d_%H:%M:%S")

# Function to log messages with timestamp
log_message(){
    echo "[$timeStamp] $1" >> "$log_file"
    echo "$1"
}
log_message "==== System Health Check Started ===="

# Get CPU usage (%) using wmic
cpu_Usage=$(wmic cpu get loadpercentage | awk 'NR==2 {print $1}')

# Get available memory (in MB) using wmic
Available_memory=$(wmic OS get FreePhysicalMemory | awk 'NR==2{print $1}')
Total_memory=$(wmic OS get TotalVisibleMemorySize | awk 'NR==2{print $1}')

MEM_AVAIL_MB=$((Available_memory / 1024))
MEM_TOTAL_MB=$((Total_memory / 1024))

#Calculate available memory percentage
MEM_AVAIL_PERCENT=$((MEM_AVAIL_MB * 100 / MEM_TOTAL_MB))

# Log the current usage
log_message "CPU Usage: ${cpu_Usage}%"
log_message "Memory Usage: ${MEM_TOTAL_MB}MB total, ${MEM_AVAIL_MB}MB available (${MEM_AVAIL_PERCENT}%)"

# Check if CPU usage is above threshold
if [ "$cpu_Usage" -gt "$Cpu_threshold" ]; then
    log_message "WARNING: CPU usage is above ${Cpu_threshold}% threshold!"
else
    log_message "CPU usage is normal (below ${Cpu_threshold}% threshold)"
fi


# Check if available memory is below threshold
if [ "$MEM_AVAIL_PERCENT" -lt "$mem_thershold" ]; then
    log_message "WARNING: Available memory is below ${mem_thershold}% threshold!"
else
    log_message "Memory availability is normal (above ${mem_thershold}% threshold)"
fi

log_message "=== System Health Check Completed ==="
log_message ""