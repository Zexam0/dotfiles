
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


# Git status log and status 
alias gg="git log --graph --date=short --pretty=format:'%C(auto)%h %Cgreen%an%Creset %Cblue%cd%Creset %C(auto)%d %s' -n 5"
alias gll='git log --graph --pretty=oneline --abbrev-commit'
alias gs="git status"
alias ga="git add"
alias gaa="git add ."
alias gd="git diff"
alias gci="git commit -m"
alias gph="git push"
alias gpl="git pull"

# mkdir with argument and cd into created directory
mkcd () { mkdir "$@" && cd "$_"; }

brc () { 
    . ~/.bashrc && printf 'Reloaded!'
    sleep 0.5
    printf '\e[3F\e[J'
}

function tst () {
    echo "$*"
}
