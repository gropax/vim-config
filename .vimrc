" Bépo mapping
" 
" set encoding=utf-8
" set fileencoding=utf-8

" Set file encoding to utf-8
if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
endif

" Import Bépo mappings
source ~/.vimrc.bepo

let mapleader = "à"

" (???)
set number
set autoindent

" Highlight characters over 80 chars line
" (not working)
highlight OverLength guibg=#592929
match OverLength /\%81v.\+/

" Autoload plugins using Pathogen.vim
call pathogen#infect()
call pathogen#incubate()
call pathogen#helptags()

"
set nocompatible

" set term=xterm
set term=screen-256color

syntax on
filetype plugin indent on

set t_Co=256
set guifont=Consolas:h16
colorscheme codeschool

" AutoSave.vim
" (???)
let auto_save = 0


" Special filetypes
"
autocmd BufNewFile,BufRead *.coffee.tt setf coffee
autocmd BufNewFile,BufRead *.hamlc setf haml


" NeoComplete
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
" 
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


" Surround
"
"nmap ls <Plug>Csurround
"nunmap <buffer> cs


" NERDTree
" 
" Open a NERDTree automatically when vim starts up if no files were specified
autocmd vimenter * if !argc() | NERDTree | endif

" Map a specific shortcut to open NERDTree
nmap <C-n> :NERDTree<CR>

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


