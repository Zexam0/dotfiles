#!/usr/bin/env bash
set -e

# Debugging
# exec >> /tmp/tmux_debug.log 2>&1
# set -x

source $HOME/.bash_functions

function tmux_switch_client ()
{
    launch_selection
    if ! tmux has-session -t="$name" 2>/dev/null; then
        tmux new-session -ds "$name" -c "$selected" 
    fi

    tmux switch-client -t "$name"
}

function tmux_open_choosen_window ()
{
    launch_selection
    tmux new-window -n "$name" -c "$selected"
    echo "$name" "$selected"
}

"$@"
