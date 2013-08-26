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
