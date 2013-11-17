#!/bin/bash
# update.sh
#
# copies dotfiles to your home directory

cp -rf .vim ~/.vim
cp -rf .vimrc ~/.vimrc
cp -rf .gitconfig ~/.gitconfig
cp -rf .gitignore ~/.gitignore
cp -rf .oh-my-zsh/ ~/.oh-my-zsh
cp -rf .zshrc ~/.zshrc

echo "dotfiles have been copied"
