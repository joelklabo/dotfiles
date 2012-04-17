#!/bin/bash
# update.sh
#
# copies dotfiles to your home directory

cp -rf .bash_profile ~/.bash_profile
cp -rf .vim ~/.vim
cp -rf .vimrc ~/.vimrc
cp -rf .gitconfig ~/.gitconfig

echo "Files are copied, don't forget to run source ~/.bash_profile"
