# set operating system platform
platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
   platform='linux'
elif [[ "$unamestr" == 'FreeBSD' ]]; then
   platform='freebsd'
elif [[ "$unamestr" == 'Darwin' ]]; then
   platform='darwin'
fi

# set platform dependant variables
if [[ $platform == 'linux' ]]; then
	alias ls='ls --color=auto'
	share_dir_git='/usr/local/share/git-core/contrib/completion'
elif [[ $platform == 'freebsd' ]]; then
	alias ls='ls -G'
	share_dir_git='/usr/local/share/git-core/contrib/completion'
elif [[ $platform == 'darwin' ]]; then
	share_dir_git='/usr/share/git-core'
fi

# set git scripts
share_dir_git='/usr/share/git-core'
source ${share_dir_git}/git-completion.bash
source ${share_dir_git}/git-prompt.sh

# not sure if this is needed or not
[[ $PS1 && -f ${share_dir_git}/bash_completion.sh ]] && \
        source ${share_dir_git}/bash_completion.sh

# returns the git status for a cool prompt
function _git_prompt() {
    local git_status="`git status -unormal 2>&1`"
    if ! [[ "$git_status" =~ Not\ a\ git\ repo ]]; then
        if [[ "$git_status" =~ nothing\ to\ commit ]]; then
            local ansi=32
        elif [[ "$git_status" =~ nothing\ added\ to\ commit\ but\ untracked\ files\ present ]]; then
            local ansi=34
        else
            local ansi=33
        fi  
        echo -n '\[\e[0;33;'"$ansi"'m\]'"$(__git_ps1)"'\[\e[0m\]'
    fi
}

function _prompt_command() {
  PS1="[\[\033[32m\]\w\[\033[0m\]]\[\033[0m\]\n\[\033[1;36m\]\u@\[\033[0;37m\]\h] `_git_prompt` \[\033[1;33m\]-> \[\033[0m\]"
}

PROMPT_COMMAND=_prompt_command

# use this to speed up tmux session creating
alias tm="~/.tmux/tmux.sh"

# use vi commands on the cli
set -o vi
