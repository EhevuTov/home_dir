" global settings I use for all platforms
source ~/.vim/vundle.vim
source ~/.vim/vundle_opt.vim
source ~/.vim/global.vim

" source platform specific vimrc config files
execute 'source ~/.vim/'. substitute(system('uname -s'), "\n", "", "") . '.vim'
