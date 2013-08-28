" global settings I use for all platforms
"set t_Co=256
source ~/.vim/global.vim
source ~/.vim/vundle.vim
source ~/.vim/vundle_opt.vim

" source platform specific vimrc config files
execute 'source ~/.vim/'. substitute(system('uname -s'), "\n", "", "") . '.vim'
