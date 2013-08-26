" show special chars for non-visible chars for readability and hinting
set list
set listchars=tab:»\ ,trail:·,eol:¬,nbsp:_

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

