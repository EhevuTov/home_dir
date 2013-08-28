syntax		on
filetype	on
filetype plugin on
filetype indent on
colorscheme	slate
"set background=dark
"colorscheme solarized
let		c_space_errors=1
let		g:clang_use_library=1
let		g:clang_close_preview=1
let		g:clang_trailing_placeholder=1
let		g:clang_complete_copen=1
let		g:clang_periodic_quickfix=1
let		g:clang_snippets=1
highlight	WhitespaceEOL ctermbg=red guibg=red
match		WhitespaceEOL /\s\+$/
set		cindent
set		hlsearch
set		list
"set		listchars=tab:\ \ ,trail:·,eol:¬,nbsp:_
set		listchars=tab:»\ ,trail:·,eol:¬,nbsp:_
set		backspace+=start,eol,indent
