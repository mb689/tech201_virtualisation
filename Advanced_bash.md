# Linux Commands

- `uname` gives back system name for example `Linux`.
- Flags are a way to tell bash what type of output to give for example `-a` or `-y`.
- `cd` followed by target is used to navigate between folders. 
- `cd..` is used to go backwards. Or `cd../..` to back two levels.
- `ls` lists all the files in a folder
- `ls -a` lists all the hidden files in a folder
- `cd /` will take you to root directory or we can do `cd ~`
- `ls -l` will list all the file premissions

### Absolute path
- `C:\Users\Username\Documents\myfile.txt` from root directory

### Relative path
- `Folder1\Folder2\file.txt` relative to directory you are in.

### Creating files and folders
- `touch` used to create files.
- `nano` used to edit the files created
- `cat` used to output contents of a file
- `mkdir` used to make a new folder
- `cp` is a way to copy file content into another. `cp` followed by file you want to copy followed by new file name
- `cp` followed by filename followed by new folder name makes a new copy of a file in a folder.
- `cp -rf newFolder/ newFolder2` copies file contents from one folder into a new folder.
- `rsync -r newFolder newFolder2` makes a new folder in newFolder2 with all the copied files from newFolder.
- `mv` moves files into a new folder. Can also be used to rename files

### Delete files and folder
- `rm` deletes files with no checks 
- `rm -rf` will delete a folder and everything inside it
- `man` list the manual for commands
- `grep` linux version of searching for things
