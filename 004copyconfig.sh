#!/bin/bash

# What to restore. 
#.zsh_history
#.bashrc
#.bash_history

# Declare the files and directories that need to be restored
backup_files="home/me/bin/ home/me/.config/ home/me/.oh-my-zsh/ home/me/.zshrc"

# Define the destination directory
dest="$HOME"

# Print start status message.
echo "Restoring $backup_files to $dest"

# Copy the files and directories from the backup location to the destination directory
cp -R $backup_files $dest

# Print end status message.
echo "Restore finished"
