set runtimepath+=$HOME/dotfiles
runtime init/basic.vim
runtime! init/*.vim
runtime! plugins/*.vim

autocmd BufNewFile,BufRead *.launch setfiletype xml
autocmd BufNewFile,BufRead *.hbs setfiletype html
autocmd BufNewFile,BufRead *.js.liquid setfiletype javascript

autocmd BufNewFile,BufRead *.py nnoremap <C-e>2 :!python2 %
autocmd BufNewFile,BufRead *.py nnoremap <C-e>3 :!python3 %
autocmd BufNewFile,BufRead *.sh nnoremap <C-e>b :!bash %
autocmd BufNewFile,BufRead *.js nnoremap <C-e>n :!node %


