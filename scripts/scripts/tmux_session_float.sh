#!/bin/bash

SESSION_NAME="float"

# Check if the session exists
if tmux has-session -t $SESSION_NAME 2>/dev/null; then
    # If session exists, attach to it and focus on the "main" window
    tmux attach-session -t $SESSION_NAME -c $SESSION_NAME:1
else
    # If session doesn't exist, create it
    tmux new-session -d -s $SESSION_NAME -n main
    tmux new-window -t $SESSION_NAME: -n server
    # Create a new window named "notes" and open Neovim in ~/Documents/notes
    tmux new-window -t $SESSION_NAME: -n notes -c ~/Documents/Notes -d nvim
    tmux new-window -t $SESSION_NAME: -n misc
    tmux select-window -t $SESSION_NAME:1
    # Attach to the session
    tmux attach-session -t $SESSION_NAME
fi
