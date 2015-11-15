#/bin/bash
# setup.sh
# KatsumeBlisk
# 15 November 2015

# variables
dir=~/dotfiles                    # dotfiles directory
#olddir=~/dotfiles_old             # old dotfiles backup directory
files="spectrwm.conf tmux.conf vim vimrc Xresources xinitrc zshrc"    # list of files/folders to symlink in homedir

#

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
 #   echo "Moving any existing dotfiles from ~ to $olddir"
  #  mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

