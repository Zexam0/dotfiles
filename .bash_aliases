
# Clip board copy/paste using xclip (XCLIP NEEDED)
alias "copy=xclip -selection clipboard"
alias "paste=xclip -selection clipboard -o"


# Common bash alias
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias -- -="cd -"
alias clear="printf '\e[H\e[2J'"
alias cls="clear"
alias c="clear"

# Eza alias
alias ls="eza --git --icons --group-directories-first"
alias la="ls --all"
alias tree="ls --tree --level=2"

# Git alias
alias gg="git log --graph --date=short --pretty=format:'%C(auto)%h %Cgreen%an%Creset %Cblue%cd%Creset %C(auto)%d %s' -n 5"
alias gll='git log --graph --pretty=oneline --abbrev-commit'
alias gs="git status"
alias ga="git add"
alias gaa="git add ."
alias gd="git diff"
alias gr="git restore"
alias gci="git commit -m"
alias gph="git push"
alias gpl="git pull"

# SQL alias
alias sql="sqlite3"

# Custom cat command to open images using feh
alias imgcat="feh -g 640x480 -."

# Shorter python Invocation
alias py="python"
alias py3="python3"

# mkdir and cd into one function
mkcd () { mkdir "$@" && cd "$_"; }

# Reloading config file for bash
brc () {
    . ~/.bashrc && printf 'Reloaded!'
    sleep 0.5
    printf '\e[3F\e[J'
}

# ffprobe to display file metadata
ffprobe () {
    command ffprobe -hide_banner "$@";
}

# # Test function
# function tst () {
#     echo "$*"
# }
