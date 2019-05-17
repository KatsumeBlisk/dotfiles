#/bin/sh
# setup.sh
# Zack Lofgren
# 17 May 2019

# variables
files="config tmux.conf Xresources xinitrc zshrc"    # list of files/folders to symlink in homedir

# create symlinks for each file
for file in $files; do
    echo "Creating symlink to $file in home directory."
    ln -s ./$file ~/.$file
done

