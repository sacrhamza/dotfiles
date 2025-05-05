#!/bin/bash

CWD=$(realpath .)

BACKUP_DIR="$HOME/.backup"

HOME_FILES=(bashrc alias.sh alias.tmp.sh var.sh tmux.conf input.rc)

mkdir -p "$BACKUP_DIR"

mv "$HOME/.bashrc" "$HOME/.alias.sh" "$HOME/.alias.tmp.sh" "$HOME/.var.sh" "$BACKUP_DIR"


for i in "${HOME_FILES[@]}"
do
	#create symbolic link to dotfiles for every home file
	ln -s "$CWD/$i" "$HOME/.$i"	
done

mkdir -p "$HOME/.vim/colors/"

ln -s "$CWD/gruvbox.vim" "$HOME/.vim/colors/gruvbox.vim"
