#!/bin/sh

ln -sf ~/dotfiles/.vimrc ~/.vimrc

if [ ! -e ~/.vim ]; then
  mkdir ~/.vim
fi
ln -sf ~/dotfiles/colors ~/.vim/colors

ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
