" ???
"imap <M-SPACE> <C-X><C-O>

" Indent
"
set shiftwidth=2
set tabstop=2
set expandtab

" Compiler
"
" Execute current file
nmap <F7> :!ruby %<cr>
" ???
"autocmd FileType ruby compiler ruby

" Ruby.vim
"
let ruby_operators = 1
let ruby_space_errors = 1
let g:rubycomplete_buffer_loading = 1 
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

" RSpec.vim
"
map <Leader>sc :call RunCurrentSpecFile()<CR>
map <Leader>sn :call RunNearestSpec()<CR>
map <Leader>sl :call RunLastSpec()<CR>
map <Leader>sa :call RunAllSpecs()<CR>

" Projectionist.vim
"
" Open source/specs in a new buffer
map <leader>st :A<cr>
" Open source/specs in vertical split
map <leader>sv :AV<cr>

let g:projectionist_heuristics = {
        \  "*": {
        \    "lib/*.rb": {
        \      "alternate": "spec/{}_spec.rb",
        \      "type": "spec"
        \    },
        \    "spec/*_spec.rb": {
        \      "alternate": "lib/{}.rb",
        \      "type": "source"
        \    },
        \  }
        \}

