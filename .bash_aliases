
alias "copy=xclip -selection clipboard"
alias "paste=xclip -selection clipboard -o"

alias "cdb=cd .."
alias "cdh=cd ~"
alias "clear=printf '\e[H\e[2J'; printf '\n'"

function glog() { 
    git log --color --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit -n "$@" 
} 

function gloga() { 
    git log --color --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit 
}
