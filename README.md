# Move Files Based on Regex - Perl Script
## `big part of the code and Readme.md was generated with AI`

This Perl script allows you to move files matching a specified regular expression (regex) from the current working directory to a newly created folder on your desktop.

## Features
- Prompts the user for a regex to match file names.
- Creates a `moved_files` folder on the desktop.
- Moves all files matching the regex to the `moved_files` folder.
- Opens the `moved_files` folder in Windows Explorer after the operation.

## Prerequisites
1. **Perl Installed**: Ensure you have Perl installed on your machine. You can download it from [Strawberry Perl](https://strawberryperl.com/) or [ActivePerl](https://www.activestate.com/products/perl/).
2. **Windows Environment**: This script is designed for Windows. It uses Windows-specific environment variables and commands.

## Setup
1. Save the script as `move_files.pl`.
2. Place the script in the directory where the files you want to process are located.

## Usage

1. **Run the Script**: 
   - Open the command prompt or terminal.
   - Navigate to the directory containing `move_files.pl`.
   - Run the script using:
     ```bash
     perl move_files.pl
     ```

2. **Input the Regex**:
   - When prompted, enter the regex to match the file names you want to move. For example:
     ```
     ^test.*\.txt$
     ```
     This regex will match all files starting with "test" and ending with ".txt".

3. **File Movement**:
   - The script will create a folder named `moved_files` on your desktop.
   - It will move all files from the current directory that match the provided regex to the `moved_files` folder.

4. **Folder Access**:
   - After moving the files, the script will automatically open the `moved_files` folder in Windows Explorer.

## Example

Suppose your current directory contains the following files:
```
test1.txt
test2.txt
sample.doc
example.txt
```

If you run the script and input the regex `^test.*\.txt$`, the `test1.txt` and `test2.txt` files will be moved to the `moved_files` folder on your desktop.

## Troubleshooting
- **Error: "Cannot open directory"**: Ensure you have permission to access the directory where the script is located.
- **Error: "Could not move file"**: Check if the file is in use or if you have write permissions.
- **Windows Explorer Fails to Open**: Ensure the `explorer` command works on your system.

## Limitations
- Currently supports only Windows environments.
- Skips hidden files and directories.

## Customization
You can modify the folder name or target path by editing the `$folder` variable in the script.
