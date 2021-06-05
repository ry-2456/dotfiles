" load vundle.vim settings
if filereadable(expand('$HOME/dotfiles/.vimrc.vundle'))
  source $HOME/dotfiles/.vimrc.vundle
endif

if filereadable(expand('$HOME/dotfiles/.vimrc.indent'))
  source $HOME/dotfiles/.vimrc.indent
endif

" for vim-airline
let g:airline_theme = 'wombat'              "テーマの設定
let g:airline#extensions#tabline#enabled=1  " タブラインを表示
" let g:airline_powerline_fonts = 1         " Powerline Fontsを利用(windowsでうまくいかない)

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
set fileencodings=iso-2022-jp,eus-jp,sjis,utf-8  " 開いたファイルを前から順番に試すencodingに変換

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

inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [<Enter> []<Left><CR><ESC><S-o>

" 画面分割時設定
" h:← j:↓ k:↑ l:→
nnoremap <C-g>h <C-w>h 
nnoremap <C-g>j <C-w>j
nnoremap <C-g>k <C-w>k
nnoremap <C-g>l <C-w>l
nnoremap <C-g>n :tabnext<CR>
nnoremap <C-g>p :tabprev<CR>
" for terminal mode
set termwinkey=<C-q> " map <C-w> to <C-q> when terminal-job mode. (for vim 8.1 or later. use termkey instead for vim 8.0 or older)
tnoremap <C-g>h <C-q>h
tnoremap <C-g>j <C-q>j
tnoremap <C-g>k <C-q>k
tnoremap <C-g>l <C-q>l
tnoremap <C-g>n <C-q>:tabnext<CR>
tnoremap <C-g>p <C-q>:tabprev<CR>
" 幅増>,幅減<,高増+,高減-
nnoremap > <C-w>>
nnoremap < <C-w><
nnoremap + <C-w>+
nnoremap - <C-w>-

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

