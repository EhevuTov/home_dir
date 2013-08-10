" Vundle config
set nocompatible               " be iMproved
filetype on											"removes git commit exit error
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'altercation/vim-colors-solarized'
Bundle 'zeis/vim-kolor'
"Bundle 'flazz/vim-colorschemes'
"Bundle 'desert-warm-256'
Bundle 'majutsushi/tagbar'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-pastie'
Bundle 'mattn/gist-vim'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'ddollar/nerdcommenter'
"Bundle 'mbbill/code_complete'
"Bundle 'millermedeiros/vim-statline'
Bundle 'Lokaltog/vim-powerline'

" Github repos of the user 'vim-scripts'
" => can omit the username part
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'CSApprox'

" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required!


" local config
" conditional for color terminals
"set t_Co=256
if &t_Co != 256 && ! has("gui_running")
	echomsg ""
	echomsg "err: please use GUI or a 256-color terminal (so that t_Co=256 could be set)"
	echomsg &t_Co
	echomsg ""
endif

if &t_Co > 2 || has("gui_running")
	syntax on
	set hlsearch
	set incsearch
endif

if &t_Co >= 256 || has("gui_running")
"	set background=dark
"	set background=light
"	colorscheme solarized
"	let g:solarized_termcolors=256
endif

if !has('gui_running')
" Compatibility for Terminal
	let g:solarized_termtrans=1
	if (&t_Co >= 256 || $TERM == 'xterm-256color')
	let g:solarized_termcolors=256
" Do nothing, it handles itself.
	else
" Make Solarized use 16 colors for Terminal support
let g:solarized_termcolors=16
	endif
endif

" Leave this at normal at all times
let g:solarized_contrast='normal'
"
" " Non-text items visibility, normal, low or high
let g:solarized_visibility='low'
"
" " Show trailing white spaces
let g:solarized_hitrail=1
"
" " Disable the Solarized menu, when using GUI
let g:solarized_menu=0
"
" " Don't use any underline styles
let g:solarized_underline=1
let g:solarized_bold=1
let g:solarized_italic=1
let g:solarized_degrade=0
"
set background=dark " Use the light/dark version the color scheme
silent! colorscheme solarized " Set the color scheme to use, no errors allowed

"highlight CursorLineNr cterm=none ctermfg=0 ctermbg=none guifg=#073642
"highlight CursorLine cterm=none guibg=#000000 ctermbg=100
"highlight NonText cterm=none ctermfg=0 guifg=#073642
"highlight SpecialKey cterm=none ctermfg=0 guifg=#073642 ctermbg=none guibg=#002b36
" Italicize comments
"highlight Comment cterm=italic
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
" show special chars for non-visible chars for readability and hinting
set list
set listchars=tab:▸\ ,trail:·,eol:¬,nbsp:_
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

" plugin specific
"
" Tagbar
nnoremap <silent> <leader>tt :TagbarOpen fj<CR>

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_javascript_checkers = ['jsl']

" FuzzyFinder
" disables caching :FufRenewCache
let g:fuf_help_cache_dir = ''
let g:fuf_tag_cache_dir = ''
let g:fuf_taggedfile_cache_dir = ''
" "FufBuffer        - Buffer mode (|fuf-buffer-mode|)
nnoremap <silent> <leader>fb :FufBuffer<CR>
" :FufFile|         - File mode (|fuf-file-mode|)
nnoremap <silent> <leader>ff :FufFile<CR>
" :FufDir|          - Directory mode (|fuf-dir-mode|)
nnoremap <silent> <leader>fd :FufDir<CR>
" :FufMruFile|      - MRU-File mode (|fuf-mrufile-mode|)
nnoremap <silent> <leader>fmf :FufMruFile<CR>
" :FufTag|          - Tag mode (|fuf-tag-mode|)
nnoremap <silent> <leader>ft :FufTag<CR>
" :FufTaggedFile|   - Tagged-File mode (|fuf-taggedfile-mode|)
nnoremap <silent> <leader>ftf :FufTaggedFile<CR>
