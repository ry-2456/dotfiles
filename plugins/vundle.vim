filetype off 

if has("win32") || has("win64")         " for windows 
  set shellslash                        " windows環境でpath区切り文字を/(slash)にする
  set rtp+=~/vimfiles/bundle/Vundle.vim " set the runtime path to include Vundle and initialize
  call vundle#begin('~/vimfiles/bundle') 
endif 

if has("unix")                       " for unix 
  set rtp+=~/.vim/bundle/Vundle.vim  " set the runtime path to include Vundle and initialize
  call vundle#begin()
endif

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'  
" htmlタグの補完
Plugin 'mattn/emmet-vim'  
" status lineをいい感じに
Plugin 'itchyny/lightline.vim'
" comment out easily
Plugin 'tpope/vim-commentary'
" make table easily
Plugin 'dhruvasagar/vim-table-mode'
" displya vertical line at each indentation
Plugin 'Yggdroot/indentLine'

call vundle#end()
filetype plugin indent on
