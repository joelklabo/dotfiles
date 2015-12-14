#!/bin/bash
# update.sh
#
# copies dotfiles to your home directory

cp -rf .vim ~/.vim
cp -rf .vimrc ~/.vimrc
cp -rf .gitconfig ~/.gitconfig

git config --global core.excludesfile '.gitignore_global'

echo "dotfiles have been copied"
