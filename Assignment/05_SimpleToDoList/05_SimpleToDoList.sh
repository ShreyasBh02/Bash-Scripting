#!/bin/bash

# Simple To-Do List Script
# Allows the user to add, view, and remove tasks

TODO_FILE="todo.txt"
# Functions to display the menu
show_menu(){
   echo "===================="
    echo "   To-Do List Menu  "
    echo "===================="
    echo "1. Add Task"
    echo "2. View Tasks"
    echo "3. Remove Task"
    echo "4. Exit"
    echo "===================="
}

# Funtion to add the task
add_task(){
    read -rp "Enter the Task: " task
    echo "$task" >> $TODO_FILE
    echo "Task added: '$task'"
}

# Function to view tasks
view_task(){
    if [[ -f "$TODO_FILE" && -s "$TODO_FILE" ]]; then
        echo "Your To-Do List"
        nl -w2 -s'. ' "$TODO_FILE"  # Number the lines
    else
        echo "NO Taaks found."
    fi
}

# Funtion to remove a task
remove_task(){
    view_task
    read -rp "Enter the task number to remove: " task_number
    if [[ -f "$TODO_FILE" && -s "$TODO_FILE" ]]; then
        sed -i.bak "${task_number}d" "$TODO_FILE"
        echo "Task number $task_number removed."
    else
        echo "No task found."
    fi
}

while true; do
    show_menu
    read -rp "Chose an Option (1-4): " option

    case $option in
        1) add_task ;;
        2) view_task ;;
        3) remove_task ;;
        4) echo "Exiting..."; exit 0;;
        *) echo "Invalid Option." ;;
    esac
done





