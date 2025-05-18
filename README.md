# Bash Scripting Repository

Welcome to the Bash Scripting Repository! This repository contains various Bash scripts for automating tasks and managing system operations, as part of an introduction to Bash scripting.

## Table of Contents

- [Introduction](#introduction)
- [Scripts](#scripts)
  - [Directory Management](#directory-management)
  - [Variables](#variables)
  - [Data Types](#data-types)
  - [Special Variables](#special-variables)
  - [Backup Script](#backup-script)
  - [Arithmetic Operators](#arithmetic-operators)
  - [Conditional Statements](#conditional-statements)
  - [Functions](#functions)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Introduction

This repository is designed to provide useful Bash scripts for system administrators and users who want to automate common tasks. Each script is self-contained and includes instructions for use.

## Scripts

### Directory Management
- **01_CreateDirectories.sh**: A script to create multiple directories.

### Variables
- **02_Variable.sh**: Demonstrates the use of variables in Bash.
- **03_DataTypes.sh**: Explains different data types in Bash scripting.
- **04_Var_SystemDefined.sh**: Shows how to use system-defined variables.
- **05_Var_UserDefined.sh**: Illustrates user-defined variables.
- **06_Var_SpecialVariable.sh**: Discusses special variables in Bash.

### Backup Script
- **07_Prob_backupscript.sh**: A script that creates a backup of specified files.

### Arithmetic Operators
- **08_ArithmeticOperators_().sh**: Demonstrates arithmetic operations using parentheses.
- **09_ArithmeticOperators_expr.sh**: Shows arithmetic operations using the `expr` command.

### Conditional Statements
- **10_IF_NumberComp.sh**: A script that uses `if` statements for number comparison.
- **11_IFelse_NumberComp.sh**: Demonstrates the use of `if-else` statements for number comparison.
- 
### File Comparison
- **12_FileComp.sh**: A script that compares files and outputs the differences.

### Loops
- **13_Loops.sh**: Introduces looping constructs in Bash, such as `for`, `while`, and `until`.

### Conditional Statements
- **14_ConditionalStment.sh**: Explores additional conditional statements in Bash.

### Data Streams
- **16_DataStreams.sh**: Discusses data streams in Bash, including standard input, output, and error.

### Functions
- **17_Functions.sh**: Introduces functions in Bash scripting.

### Additional Scripts: Assignments
### Task 1: Backup Script

- **Description**: This script creates a backup of all `.txt` files in the current directory and appends the current date and time to the filenames.
- **Usage**: Run the script in the directory containing the `.txt` files.

### Task 2: System Health Check

- **Description**: This script checks the system's CPU and memory usage, reporting if the CPU usage is above 80% or if available memory is below 20%. Results are logged to `system_health.log`.
- **Usage**: Run the script in a terminal to perform the health check.

### Task 3: User Account Management

- **Description**: This script reads a list of usernames from `user_list.txt`, creates new users, generates random passwords, and saves the credentials to `credentials.txt`.
- **Usage**: Ensure you have a `user_list.txt` file with usernames, then run the script with superuser privileges.


## Usage

To use any of the scripts in this repository, follow these steps:

1. Clone the repository to your local machine:
   ```bash
   git clone https://github.com/ShreyasBh02/bash-scripting-repo.git
