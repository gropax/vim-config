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
"source ~/global-config/vim-config/.vimrc.bepo " Dirty path
set langmap=ch,tj,sk,rl,hr,lc,ks,jt,éw,Éw

let mapleader = "à"

" (???)
set number
set autoindent

set relativenumber

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


syntax on
filetype plugin indent on

set t_Co=256
set guifont=Consolas:h16
colorscheme codeschool

" AutoSave.vim
" (???)
let auto_save = 0


" FZF fuzzy finder
"
set rtp+=~/.fzf
nmap <Leader>f :Files<CR>


" Special filetypes
"
autocmd BufNewFile,BufRead *.coffee.tt setf coffee
autocmd BufNewFile,BufRead *.hamlc setf haml



" Use deoplete.
let g:deoplete#enable_at_startup = 1


" UltiSnips
" 
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


" NERDTree
" 
" Open a NERDTree automatically when vim starts up if no files were specified
autocmd vimenter * if !argc() | NERDTree | endif

" Map a specific shortcut to open NERDTree
nmap <C-n> :NERDTree<CR>

" Close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" DelimitMate
"
let delimitMate_expand_cr = 2
let delimitMate_expand_space = 1
let delimitMate_balance_matchpairs = 1


" EasyMotion
" 
let g:EasyMotion_leader_key = '<Leader>'
let g:EasyMotion_mapping_w = '<Leader>é'
let g:EasyMotion_mapping_W = '<Leader>É'

" Textobj-user
" 
runtime macros/matchit.vim

" Gist.vim
"
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1
"let g:gist_clip_command = 'xclip -selection clipboard'

" Prolog extension
"
autocmd BufNewFile,BufRead *.pl set filetype=prolog
autocmd BufNewFile,BufRead *.plt set filetype=prolog
