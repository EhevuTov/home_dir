PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/usr/games:~/bin:/usr/local/share/npm/bin
export PATH
export CLICOLOR=1
#export LSCOLORS=GxFxCxDxBxegedabagaced
export NODE_PATH=/usr/local/lib/node_modules

# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}
