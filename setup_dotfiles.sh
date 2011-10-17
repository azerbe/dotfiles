#!/bin/bash

# get the dir of the current script
script_dir="$( cd "$( dirname "$0" )" && pwd )"

# add bashrc_after to bashrc if it's not there already
if ! grep -q bashrc_after ~/.bashrc
then
  echo "source $script_dir/bashrc_after" >> ~/.bashrc
fi

# add links to our other files if there are not there already
for file in bash_aliases bash_completion
do
  if [ ! -a ~/.$file ]
  then
    ln -s $script_dir/$file ~/.$file
  fi
done


# -p says to create the dir if it doesn't exist already
mkdir -p $HOME/bin

platform=$(uname)

# Naturally, macvim needs to be installed for this to work
if [[ $platform == *Darwin* ]]
then
    # symlinks for mvim
    ln -s /usr/local/bin/mvim ~/bin/gvimdiff
    ln -s /usr/local/bin/mvim ~/bin/vimdiff
    ln -s /usr/local/bin/mvim ~/bin/vim
    ln -s /usr/local/bin/mvim ~/bin/gvim
fi
