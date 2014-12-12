" Bépo mapping
" 
" set encoding=utf-8
" set fileencoding=utf-8

if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
endif

source ~/.vimrc.bepo

let mapleader = "à"

set number
set autoindent
" Highlight characters over 80 chars line
highlight OverLength guibg=#592929
match OverLength /\%81v.\+/

call pathogen#infect()
call pathogen#incubate()
call pathogen#helptags()

set nocompatible
" set term=xterm
set term=screen-256color

syntax on
filetype plugin indent on

set t_Co=256
set guifont=Consolas:h16
colorscheme codeschool

" AutoSave
" 
let auto_save = 0



"NeoComplete
"
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_auto_delimiter = 1
"let g:neocomplete#enable_auto_select = 1

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction

" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"


" UltiSnips
" 
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Surround
" ————————
"nmap ls <Plug>Csurround
"nunmap <buffer> cs


" NERDTree
" 
" Open a NERDTree automatically when vim starts up if no files were specified
autocmd vimenter * if !argc() | NERDTree | endif

" Map a specific shortcut to open NERDTree
"map <C-n> :NERDTree<CR> # Doesn't work...

" Close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let g:NERDTreeMapChdir = 'L'
let g:NERDTreeMapChdir = 'ld'
let g:NERDTreeMapCWD = 'LD'
let g:NERDTreeMapOpenInTab = 'j'
let g:NERDTreeMapJumpLastChild = 'J'
let g:NERDTreeMapOpenVSplit = 'k'
let g:NERDTreeMapRefresh = 'h'
let g:NERDTreeMapRefreshRoot = 'H'


" EasyMotion
" 
let g:EasyMotion_leader_key = '<Leader>'
let g:EasyMotion_mapping_w = '<Leader>é'
let g:EasyMotion_mapping_W = '<Leader>É'

" Textobj-user
" 
runtime macros/matchit.vim


" C++ config
" 
autocmd FileType cpp setlocal shiftwidth=4 tabstop=4 expandtab

" Python config
" 
autocmd FileType python setlocal shiftwidth=4 tabstop=4 expandtab

" VIMSript config
" 
autocmd FileType vim setlocal shiftwidth=4 tabstop=4 expandtab

" Ruby config
" 
"nmap <F7> :!ruby %<cr>
"imap <M-SPACE> <C-X><C-O>
""
"autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 expandtab
"autocmd FileType ruby compiler ruby
"let ruby_operators = 1
"let ruby_space_errors = 1
"autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
"autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
"autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

" eRuby config
" 
autocmd FileType eruby setlocal shiftwidth=2 tabstop=2 expandtab

" RSpec.vim mappings
" 
"map <Leader>sc :call RunCurrentSpecFile()<CR>
"map <Leader>sn :call RunNearestSpec()<CR>
"map <Leader>sl :call RunLastSpec()<CR>
"map <Leader>sa :call RunAllSpecs()<CR>

" HTML config
" 
autocmd FileType html setlocal shiftwidth=4 tabstop=4 expandtab

" Emmet config
" 
let g:user_emmet_leader_key=''
"let g:user_emmet_mode='n'    "only enable normal mode functions.

" JavaScript config
" 
autocmd FileType javascript setlocal shiftwidth=4 tabstop=4 expandtab

" CoffeeScript config
" 
autocmd FileType coffee setlocal shiftwidth=2 tabstop=2 expandtab
autocmd BufNewFile,BufRead *.coffee.tt setf coffee

" Literate CoffeeScript config
" 
autocmd FileType litcoffee setlocal shiftwidth=2 tabstop=2 expandtab

" HAML 
" 
autocmd BufNewFile,BufRead *.hamlc setf haml
autocmd FileType haml setlocal shiftwidth=2 tabstop=2 expandtab

" Eco config
" 
autocmd FileType eco setlocal shiftwidth=4 tabstop=4 expandtab
