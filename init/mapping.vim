inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [<Enter> []<Left><CR><ESC><S-o>

" when spliting windows
" | h:← | j:↓ | k:↑ | l:→ |
nnoremap <C-g>h <C-w>h 
nnoremap <C-g>j <C-w>j
nnoremap <C-g>k <C-w>k
nnoremap <C-g>l <C-w>l
nnoremap <C-g>n :tabnext<CR>
nnoremap <C-g>p :tabprev<CR>
"
" >:increase width
" <:decrease width 
" +:increase height
" -:decrease height
nnoremap > <C-w>>
nnoremap < <C-w><
nnoremap + <C-w>+
nnoremap - <C-w>-
nnoremap = <C-W>=

" terminal mode
" map <C-w> to <C-q> when terminal-job mode. (for vim 8.1 or later. use termkey instead for vim 8.0 or older)
set termwinkey=<C-q>
tnoremap <C-g>h <C-q>h
tnoremap <C-g>j <C-q>j
tnoremap <C-g>k <C-q>k
tnoremap <C-g>l <C-q>l
tnoremap <C-g>n <C-q>:tabnext<CR>
tnoremap <C-g>p <C-q>:tabprev<CR>
