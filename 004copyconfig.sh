#!/bin/bash

# What to restore. 
#.zsh_history
#.bashrc
#.bash_history

backup_files="
home/me/bin/
home/me/.config/
home/me/.oh-my-zsh/
home/me/.zshrc
"

# Where to restore to.
dest="$HOME"

# Print start status message.
echo "Restoring $backup_files to $dest"
cp -R $backup_files $dest

# Print end status message.
echo
echo "Restore finished"
