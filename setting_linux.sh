#!/bin/sh

ln -sf ~/dotfiles/vimrc ~/.vimrc

if [ ! -e ~/.vim ]; then
  mkdir ~/.vim
fi

# make .vimsessions dir to save vim sessions
if [ ! -e ~/.vimsessions ]; then
  mkdir ~/.vimsessions
fi

ln -sf ~/dotfiles/colors ~/.vim/colors
ln -sf ~/dotfiles/tmux.conf ~/.tmux.conf

# install Vundle.vim
VUNDLE_INSTALL_PATH=~/.vim/bundle/Vundle.vim
if [ -e $VUNDLE_INSTALL_PATH ]; then
  rm -rf $VUNDLE_INSTALL_PATH
fi
git clone https://github.com/VundleVim/Vundle.vim.git $VUNDLE_INSTALL_PATH
