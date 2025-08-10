#!/usr/bin/env bash
set -e

# Debugging
# exec >> /tmp/tmux_debug.log 2>&1
# set -x

source $HOME/.bash_functions

function _handle_select () {
    local action=$1
    launch_selection

    if [[ -z "$selected" ]]; then
        tmux display-message "Operation Aborted: Nothing selected!"
        return
    fi 

    case "$action" in
        switch) 
            if ! tmux has-session -t="$name" 2>/dev/null; then
                tmux new-session -ds "$name" -c "$selected" 
            fi
            tmux switch-client -t "$name"
            ;;
        window)
            tmux new-window -n "$name" -c "$selected"
            ;;
        *)
            tmux display-message "Unknown action: $action"
            ;;
    esac
}

function tmux_switch_client () { _handle_select switch; }
function tmux_open_choosen_window () { _handle_select window; }

"$@"
