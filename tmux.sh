#!/bin/sh

## if session is not specefied as first argument,set it to below value
SESSION="rwh"
if [ "$1" != "" ]
then
    SESSION="$1"
fi

## if second argument is given set it as working directory or else set it to pwd. Exit in worst case.
DIR=`pwd`
if [ -d "$2" ]
then
    DIR="$2"
fi

## If session is already open, connect to it
DETACHED_SESSION="`tmux list-sessions |   sed -n 's/.*\(^.*\):\ .*/\1/p'`"
echo "Detached :: $DETACHED_SESSION"
if [ "$DETACHED_SESSION" = "$SESSION" ]
then
    echo "Session Found"
    tmux attach -t "$SESSION"
    exit 1
else
    tmux new  -d -s  "$SESSION" 
fi

## Development session runnin emacs in full screen
DEV="dev"
tmux rename-window -n "$DEV"
tmux send-keys -t 0  C-z 'cd "$DIR"' Enter
tmux send-keys -t 0  C-z 'emacs -nw *.hs *.org' Enter


## Split the second window into 2 parts, run ghci in one and leave second for compile
RUN="run"
tmux new-window -n "$RUN"
tmux split-window -h
## Run ghci in first pane
tmux send-keys -t 0  C-z 'cd "$DIR"' Enter
tmux send-keys -t 0  C-z 'ghci' Enter

## Run ghc in second pane

tmux send-keys -t 1  C-z 'cd "$DIR"' Enter
tmux send-keys -t 1  C-z 'ghc' 

## Launch one more window for running git update script
VCS="version-control"
tmux new-window -n "$VCS"
tmux send-keys -t 0  C-z 'cd "$DIR"' Enter
tmux send-keys -t 0  C-z './autoupdate-git.sh' Enter


## Launch last  more window for running elink browser
RESEARCH="research"
tmux new-window -n "$RESEARCH"
tmux send-keys -t 0  C-z 'cd "$DIR"' Enter
tmux send-keys -t 0  C-z 'lynx' Enter


tmux select-window -t "$DEV"

tmux attach -t  "$SESSION"



