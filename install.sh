#!/bin/bash

CWD=$(dirname $(realpath "$0"))

BACKUP_DIR="$HOME/.backup"

HOME_FILES=(bashrc alias.sh alias.tmp.sh var.sh tmux.conf inputrc)

mkdir -p "$BACKUP_DIR"

setup()
{
	for i in "${HOME_FILES[@]}"
	do
		if [ -f "$i" ]
		then
			mv "${HOME}/$i" "$BACKUP_DIR"
		fi
		ln -s "$CWD/$i" "$HOME/.$i"	
	done

	mkdir -p "$HOME/.vim/colors/"

	ln -s "$CWD/gruvbox.vim" "$HOME/.vim/colors/gruvbox.vim"
}

setup
