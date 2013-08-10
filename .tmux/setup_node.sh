# setup node environment
 
#cd ~/source/node/node
 
# create the node session
tmux new-session -d -s node
 
# create a window for processes
tmux rename-window -t node:1 'procs'
 
# start a coffeescript compiler
#tmux send-keys -t 1 './coffee' C-m

# split the current window vertically
tmux split-window -v
 
# run the test suite in the new split
#tmux send-keys -t 1 'node test' C-m
 
# create a window for a simple shell
tmux new-window -t node:2 -n 'shell'
 
# create a window for vim
tmux new-window -t node:3 -n 'code'
tmux split-window -v
tmux resize-pane -D 15
tmux select-pane -t node:3.0
tmux split-window -h
 
# create a window for a database
tmux new-window -t node:4 -n 'database'
tmux split-window -v
tmux resize-pane -D 15

# start vim
#tmux send-keys -t 3 'vim .' C-m
 
# set the starting window
tmux select-pane -t node:3.0
 
# attach to the tmux session we just created
tmux a
