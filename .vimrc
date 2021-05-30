syntax on
set belloff=all
set number
"カーソル位置表示
set ruler
"検索結果のハイライト
set hlsearch
"何個分のスペースで1つのtabか
set tabstop=2
"自動インデントの幅
set shiftwidth=2
"tabキーで空白を使う
set expandtab
"autoindent
set ai

augroup fileTypeIndent
  autocmd!
  autocmd BufNewFile,BufRead *.rs setlocal tabstop=4 shiftwidth=4
augroup END
