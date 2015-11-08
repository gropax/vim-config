set shiftwidth=4
set tabstop=4
set expandtab


" Execute current file
nmap <F5> :!nosetests<cr>
nmap <F6> :!nosetests %<cr>
nmap <F7> :!python3 %<cr>

autocmd CompleteDone * pclose

" Fix auto fold in python-mode
set nofoldenable
let g:pymode_folding=1

" Disable Pydoc preview
set completeopt-=preview

let g:pymode_lint=0
let g:pymode_rope=0
