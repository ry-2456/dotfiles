set runtimepath+=$HOME/dotfiles
runtime! plugins/*.vim
runtime! init/*.vim

let g:indentLine_enabled = 1                " enable indentLine plugin

let g:vim_json_conceal=0 " display double quation of json file

set number         "行番号を表示する
set title          "編集中のファイル名を表示
set showmatch      "カッコ入力時の対応するカッコを表示

" set columns=140
" set lines=40
set hlsearch       "ハイライト
set cursorline 
"set swapfile
set splitbelow
set splitright 

set encoding=utf-8                               " vimの内部で使用される文字コード
set fileencoding=utf-8                           " ファイル書き込み時の文字コード
set fileencodings=utf-8,iso-2022-jp,eus-jp,sjis " 開いたファイルを前から順番に試すencodingに変換

" ファイル処理関連の設定
set autoread   " 外部でファイルに変更された場合は読みなおす
set noswapfile " ファイル編集中にスワップファイルを作らない
set nobackup

let g:netrw_liststyle=3   "ファイルの表示スタイル let g:netrw_banner=0      "バナーの非表示
let g:netrw_banner=0 " バナーの非表示
let g:netrw_list_hide='\(^\|\s\s\)\zs\.\S\+'
let g:netrw_altv=1   " 'v'でファイルを開くときは右側で開く.(デフォルトでは左側なので入れ替え)
let g:netrw_alto=1   " 'o'でファイルを開くときは下側で開く.(デフォルトでは左側なので入れ替え)
set completeopt=menuone,noinsert

set list
set listchars=eol:↲ "行末の表示

autocmd BufNewFile,BufRead *.launch setfiletype xml
autocmd BufNewFile,BufRead *.py setfiletype python
autocmd BufNewFile,BufRead *.html setfiletype html
autocmd BufNewFile,BufRead *.hbs setfiletype html


" this if for hybrid colorscheme
" set background=dark
" colorscheme hybrid
" colorscheme molokai
" colorscheme atom-dark-256
" colorscheme zenburn
colorscheme tender
syntax on
set t_Co=256

highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight LineNr ctermbg=none
highlight Folded ctermbg=none
highlight EndOfBuffer ctermbg=none

highlight LineNr ctermfg=94

autocmd BufNewFile,BufRead *.py nnoremap <C-e>2 :!python2 %
autocmd BufNewFile,BufRead *.py nnoremap <C-e>3 :!python3 %
autocmd BufNewFile,BufRead *.sh nnoremap <C-e>b :!bash %
autocmd BufNewFile,BufRead *.js nnoremap <C-e>n :!node %

"vim終了時にターミナルのサイズを24x80にしてから終了する
nnoremap :wqr<Enter> :set<Space>lines=24<CR>:set<Space>columns=80<CR>:wq<CR>

