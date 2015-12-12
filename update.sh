#!/bin/bash
# update.sh
#
# copies dotfiles to your home directory

cp -rf .vim ~/.vim
cp -rf .vimrc ~/.vimrc

echo "dotfiles have been copied"
