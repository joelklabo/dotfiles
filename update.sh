#!/bin/bash
# update.sh
#
# copies dotfiles to your home directory

cp -rf .bash_profile ~/
cp -rf .vim ~/
cp -rf .vimrc ~/
cp -rf .gitconfig ~/

source ~/.bash_profile
