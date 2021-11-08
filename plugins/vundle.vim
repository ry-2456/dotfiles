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

Plugin 'VundleVim/Vundle.vim'     " let Vundle manage Vundle, required
Plugin 'mattn/emmet-vim'          " htmlタグの補完
Plugin 'tpope/vim-commentary'     " コメントアウトが楽にできる
Plugin 'dhruvasagar/vim-table-mode' "テーブル作成
Plugin 'Yggdroot/indentLine'      " displya vertical line at each indentation

call vundle#end()
filetype plugin indent on
