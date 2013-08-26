" set filename in window title bar
set title
" set line numbers on left side
set number
set ruler
set cursorline
" tabs to be 2 space wide
" set expandtab
set shiftwidth=2
set tabstop=2
" 80th column to be default color
set colorcolumn=80
" word wrap on last column
set tw=80
" always show status line
set laststatus=2
" Show the current mode
set showmode
" Enable utf-8
set encoding=utf-8
" Don’t reset cursor to start of line when moving around.
set nostartofline
" remap Esc key to a jk or kj mash
inoremap jk <Esc>
inoremap kj <Esc>
" automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc
" change the mapleader from \ to ,
let mapleader=","
" use the buffer for on more than one file
set hidden
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
" doesn't write backup or swap files
set nobackup
"set noswapfile
" enable mouse
set mouse=a
" change prefix
nnoremap ; :
" Backup Directories
set backupdir=~/.vim/backups,.
set directory=~/.vim/swaps,.
if exists('&undodir')
	set undodir=~/.vim/undo,.
endif


