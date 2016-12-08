" Disable Vi compatibility
set nocompatible 

" Pathogen
execute pathogen#infect() 


set encoding=utf-8
set termencoding=utf-8
set t_Co=256

" Map <leader> to ,
let mapleader=","

syntax on 

" Use my own color scheme
colorscheme jybeaujean


" In GUI mode, use Monaco Font
"
if has("gui_running")
  "set guifont=Monaco\ for\ Powerline:h12
  set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete:h12
endif


" Set filetype stuff to on
filetype on
filetype plugin on
filetype indent on


" ---------------
" Backups
" ---------------
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

" UI 
" ------------------------------
set number ruler " show line numbers


" MOUSE
" ------------------------------
set mousehide  " Hide mouse after chars typed
set mouse=a  " Mouse in all modes


" SEARCH
" ------------------------------
set incsearch " incremental searching on
set ignorecase " Case insensitive search
set smartcase
set hlsearch " highlight all matches
set wildignore+=*.o,*.obj,*.exe,*.so,*.class,*.dll,*.pyc,.svn,.hg,.bzr,.git,
  \.sass-cache,*.class,*.scssc,*.cssc,sprockets%*,*.lessc


" Set visual bell
set vb


" Tabstops are 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

" Show matching braces
set showmatch 

" tell VIM to always put a status line in, even if there is only one window
set laststatus=2
set showtabline=2

"disables the GUI tab line in favor of the plain text version
set guioptions-=e

" Don't update the display while executing macros
set lazyredraw

" Don't show the current command int he lower right corner.  In OSX, if this is
" set and lazyredraw is set then it's slow as molasses, so we unset this
set showcmd

" Show the current mode
set showmode

" Set up the gui cursor to look nice
set guicursor=n-v-c:block-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175


set iskeyword+=$,@     " Add extra characters that are valid parts of variables

set history=100 " keep track of last commands
set undolevels=100

set cursorline
set hidden
set backspace=indent,eol,start
set copyindent   
set modeline
set shiftwidth=2 " soft space = 2
set smarttab
set wildchar=9 " tab as completion character   

                  

" When completing by tag, show the whole tag, not just the function name
set showfulltag

" Automatically read a file that has changed on disk
set autoread





" TagList Plugin
" ------------------------------
" nmap <F8> :TlistToggle<CR><CR>
nnoremap <leader>o :TlistToggle<CR>
let Tlist_Use_Right_Window   = 1
" single click to go to a tag.
" let Tlist_Use_SingleClick = 1
" sort tag by name
 let Tlist_Sort_Type = "name"
 " show only the tag of the current buffer
 let Tlist_Show_One_File = 1


" NERDTree Plugin
" ------------------------------
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>

let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2 

" Show the bookmarks table on startup
let NERDTreeShowBookmarks=1
" Don't display these kinds of files
let NERDTreeIgnore=[ '\.ncb$', '\.suo$', '\.vcproj\.RIMNET', '\.obj$',
                   \ '\.ilk$', '^BuildLog.htm$', '\.pdb$', '\.idb$',
                   \ '\.embed\.manifest$', '\.embed\.manifest.res$',
                   \ '\.intermediate\.manifest$', '^mt.dep$' ]
let NERDTreeWinSize=24

" open NerdTREE at startup only with GUI mode
if has("gui_running")
    au VimEnter *  NERDTree
endif

" 
" ------------------------------
"
" Ensure max height isn't too large. (for performance)
let g:ctrlp_max_height = 10
nnoremap <leader>t :CtrlPRoot<CR>


" CUSTOM COMMANDS
" All command that I used in Textmate
" ------------------------------


" Duplicate line. In Texmate, I often used CTRL+SHIT+d. 
nmap <silent> <leader>d yyP
nmap <silent> <C-S-d> yyP

" Edit vimrc with ,v
nmap <silent> <leader>v :e ~/.vimrc<CR>

" CTRL-s to save only in GUI mode
if has("gui_running")
 "   map <C-s> <esc>:w<CR><esc>
 "   imap <C-s> <esc>:w<CR><esc>
  noremap <silent> <C-S>          :update<CR> 
  vnoremap <silent> <C-S>         <C-C>:update<CR>
  inoremap <silent> <C-S>         <C-O>:update<CR>
endif



au bufNewFile *.tpl 0r ~/.vim/templates/tpl.txt

" Template file : set file type tp HTML
autocmd BufRead,BufNewFile *.tpl.en setlocal filetype=html
autocmd BufRead,BufNewFile *.tpl.nl setlocal filetype=html
autocmd BufRead,BufNewFile *.tpl.de setlocal filetype=html
autocmd BufRead,BufNewFile *.ractive setlocal filetype=html


" Vim close tag
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.tpl,*.tpl.en;*.tpl.nl,*.tpl.de"


" GTFO : force using iterm on Mac OS
let g:gtfo#terminals = { 'mac' : 'iterm' }


" ACK.vim
" Map :Ack to search:
cabbrev search Ack
