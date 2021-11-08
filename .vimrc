set runtimepath+=$HOME/dotfiles
runtime init/basic.vim
runtime! init/*.vim
runtime! plugins/*.vim

autocmd BufNewFile,BufRead *.launch setfiletype xml
autocmd BufNewFile,BufRead *.hbs setfiletype html
autocmd BufNewFile,BufRead *.js.liquid setfiletype javascript

