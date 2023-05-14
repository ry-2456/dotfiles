#!/bin/sh

ln -sf ~/dotfiles/.vimrc ~/.vimrc

if [ ! -e ~/.vim ]; then
  mkdir ~/.vim
fi

# make .vimsessions dir to save vim sessions
if [ ! -e ~/.vimsessions ]; then
  mkdir ~/.vimsessions
fi

ln -sf ~/dotfiles/colors ~/.vim/colors
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf

# install Vundle.vim
if [ -e ~/.vim/bundle/Vundle.vim ]; then
  rm -rf ~/.vim/bundle/Vundle.vim
fi
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
