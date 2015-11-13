#!/bin/bash
############################
# make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles

# Partly copied from:
# - https://github.com/michaeljsmalley/dotfiles/blob/master/makesymlinks.sh
# - https://github.com/tdhopper/dotfiles/blob/master/makesymlinks.sh

############################

########## Variables

dir=~/projects/dotfiles/files     # dotfiles directory
olddir_prefix=~/projects/dotfiles/bak/		# old dotfiles backup directory

# Create back-up dir with timestamp
timestamp=$(date +"%Y%m%d%H%M")
olddir="$olddir_prefix$timestamp"

cd $dir

# Check if file exists to avoid error messages.
# Ignore symlinked files (might not fit all use cases).
echo "Backing up..."
for file in *; do
  if [[ -e ~/.$file && ! -L ~/.$file ]]
  then
    echo "- .$file from ~ to $olddir"
    mkdir -p $olddir
    mv ~/.$file $olddir/
  fi
done
echo "Done"

# Symlink, overwrite existing symlinks.
echo "Symlinking..."
for file in *; do
  echo "- .$file"
  ln -sf $dir/$file ~/.$file
done
echo "Done"
