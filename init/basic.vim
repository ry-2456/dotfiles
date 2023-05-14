let g:vim_json_conceal=0
" display row numbers
set number
set title          
"行番号を表示する
set showmatch      
" set background=dark

"command line modeで候補の覧表示
set wildmenu

set mouse=a
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

" 長い行を表示
set display=lastline

syntax enable
