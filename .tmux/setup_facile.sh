# setup facile environment
 
#cd ~/source/node/facile
 
# create the facile session
tmux new-session -d -s facile
 
# create a window for processes
tmux rename-window -t facile:1 'procs'
 
# start a coffeescript compiler
#tmux send-keys -t 1 './coffee' C-m

# split the current window vertically
tmux split-window -v
 
# run the test suite in the new split
#tmux send-keys -t 1 'node test' C-m
 
# create a window for a simple shell
tmux new-window -t facile:2 -n 'shell'
 
# create a window for vim
tmux new-window -t facile:3 -n 'code'
tmux split-window -v
tmux resize-pane -D 15
tmux select-pane -t facile:3.0
tmux split-window -h
 
# start vim
#tmux send-keys -t 3 'vim .' C-m
 
# set the starting window
tmux select-pane -t facile:3.0
 
# attach to the tmux session we just created
tmux a
