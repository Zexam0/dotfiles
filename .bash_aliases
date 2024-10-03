
alias "copy=xclip -selection clipboard"
alias "paste=xclip -selection clipboard -o"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .h="cd ~"
alias clear="printf '\e[H\e[2J'; printf '\n'"
alias cls="clear"
alias c="clear"

alias gg='git log --color --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit -n 5'
alias ggf="git log --graph --date=short --pretty=format:'%C(auto)%h %Cgreen%an%Creset %Cblue%cd%Creset %C(auto)%d %s' -n 5"
alias gll='git log --graph --pretty=oneline --abbrev-commit'

alias gs="git status"

# Putting it here because it's a kind of alias
mkcd () { mkdir "$@" && cd "$_"; }


