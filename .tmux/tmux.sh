#!/bin/sh
alias tmux="TERM=screen-256color-bce tmux -2"
if [ $# -eq 0 ]; then
	echo attaching to most recent session
	tmux a
else
	echo attaching to or creating: $1
	tmux a -t $1 \
		|| ~/.tmux/setup_$1.sh \
		|| tmux new-session -s $1
fi
