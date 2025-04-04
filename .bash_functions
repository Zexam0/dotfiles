
function tmuxk { 
	tmux kill-session -t $1
}

function tmuxn { 
	tmux new -s $1
}

function tmuxa {
    tmux a -t $1
}
