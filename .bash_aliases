
# Clip board copy/paste using xclip (XCLIP NEEDED)
alias "copy=xclip -selection clipboard"
alias "paste=xclip -selection clipboard -o"

# Common bash alias
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .h="cd ~"
alias clear="printf '\e[H\e[2J'; printf '\n'"
alias cls="clear"
alias c="clear"

# Git status log and status 
alias gg='git log --color --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit -n 5'
alias ggf="git log --graph --date=short --pretty=format:'%C(auto)%h %Cgreen%an%Creset %Cblue%cd%Creset %C(auto)%d %s' -n 5"
alias gll='git log --graph --pretty=oneline --abbrev-commit'
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias ga="git add"
alias gaa="git add ."
alias gph="git push"
alias gpl="git pull"

# mkdir with argument and cd into created directory
mkcd () { mkdir "$@" && cd "$_"; }

brc () { 
    . ~/.bashrc
    printf 'Reloaded!'
    sleep 0.5
    printf '\e[3F\e[J'
}


