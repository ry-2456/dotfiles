#!/bin/sh

ln -sf ~/dotfiles/.vimrc ~/.vimrc

if [ ! -e ~/.vim ]; then
  mkdir ~/.vim
fi

# install Vundle.vim
if [ ! -e ~/.vim/bundle/Vundle.vim ]; then
  git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
fi

ln -sf ~/dotfiles/colors ~/.vim/colors
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
