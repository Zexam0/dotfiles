
function tmuxk { 
	tmux kill-session -t $1
}

function tmuxn { 
	tmux new -s $1
}

function tmuxa {
    tmux a -t $1
}

function select_folder(){
    local search_folder="$HOME/Documents"
    local selected=$(find "$search_folder" -type d | fzf --prompt="Pick one: " --preview 'ls -la {}')

    [ -z "$selected" ]

    local name=$(basename "$selected" | tr . _)
    echo "$selected"
}

function launch_selection (){
    selected=$(select_folder)
    name=$(basename "$selected" | tr . _)
}

