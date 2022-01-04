"tabを複数のスペースに置き換える
set expandtab
"<Tab>文字をspace何個分で表示するか. eg. tabstop=4だと\tがspace4つ分で表示される.
"softtabstopが設定されていないときは<tab>を押したときにtabstop分だけspaceが挿入される
set tabstop=2     
"自動indentや,>>,<<,V+>command,insert時の<C-d>や<C-t>時にspace何個分indent指せるかを設定する
set shiftwidth=2  
"改行時にインデントをキープ
set autoindent    

"python related
autocmd BufNewFile,BufRead *.py setlocal tabstop=4 shiftwidth=4

"php related
autocmd BufNewFile,BufRead *.php setlocal tabstop=4 shiftwidth=4
autocmd BufNewFile,BufRead *.blade.php setlocal tabstop=4 shiftwidth=4
