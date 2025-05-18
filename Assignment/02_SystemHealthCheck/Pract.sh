#!/bin/bash

Cpu_threshold=80
Mem_thershold=20

LOG_FILE="System.log"
TIMESTAMP=$(date +"%Y-%m-%d %H-%M-%S")

Repport(){
    echo "[$TIMESTAMP] $1" >> "$LOG_FILE"
    echo "$1"
}

CPU_USAGE=$(wmic cpu get loadpercentage | awk 'NR==2 {print $1}')
AVAILABLE_MEM=$(wmic OS get FreePhysicalMemory | awk 'NR==2 {print $1}')
TOTAL_MEM=$(wmic OS get TotalVisibleMemorySize | awk 'NR==2 {print $1}')

MEM_AVAIL_MB=$((AVAILABLE_MEM / 1024))
MEM_TOTAL_MB=$((TOTAL_MEM / 1024))

TOTAL_AVAILABLE_PERCENT=$((MEM_AVAIL_MB * 100/ MEM_TOTAL_MB))

Repport "CPU usage:{$CPU_USAGE}%"
Repport "Memory Usage: ${MEM_TOTAL_MB}MB total, ${MEM_AVAIL_MB}MB available (${TOTAL_AVAILABLE_PERCENT}%)"



