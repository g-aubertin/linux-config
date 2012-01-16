#!/bin/bash -e
# installation script for linux-config

# initializing variables
txtred=$(tput setaf 1)    # Red
txtgrn=$(tput setaf 2)    # Green
txtrst=$(tput sgr0)       # Text reset

usage ()
{

# -f: no backup
# no args: all
# -o emacs: only emacs
# -o bash: only bash

}

backup_config()
{
    mkdir -p ~/.backup.linux-config
    mv ~/.bashrc ~/.backup.linux-config
    mv ~/.emacs ~/.backup.linux-config
    mv -a ~/.emacs.d ~/.backup.linux-config
}

# first, backup existing file in ~/.backup.linux-config

if [ -d ~/.backup.linux-config ]; then
    echo"Warning, it seems that you already have a linux-config backup in ~/.backup.linux-config"
    echo"do you want to overwrite it (y/n) ?"
    read answer
    if [ $answer="y"] || [ -z $answer]; then
	rm -rf ~/.backup.linux-config
	backup_config
    fi
else
    backup_config
fi

### install bash stuff
cp bash/_.bashrc ~/.bashrc

### install emacs stuff
cp emacs/_.emacs ~/.emacs
cp -a emacs/_.emacs.d ~/.emacs.d

### install ~/bin stuff