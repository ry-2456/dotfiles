" persistent undo and redo.
if has('persistent_undo')
  let undo_path = expand('~/.vim/undo')
  set undodir=$HOME/.vim/undo
  " ↑だとうまくいく、理解していない
  " set undodir=undo_path こっちだとうまくいかない,理解していない
  set undofile
  if !isdirectory(undo_path)
    call mkdir(undo_path, 'p')
  endif 
endif

autocmd BufNewFile,BufRead *.py nnoremap <C-e>2 :!python2 %
autocmd BufNewFile,BufRead *.py nnoremap <C-e>3 :!python3 %
autocmd BufNewFile,BufRead *.sh nnoremap <C-e>b :!bash %
autocmd BufNewFile,BufRead *.js nnoremap <C-e>n :!node %



