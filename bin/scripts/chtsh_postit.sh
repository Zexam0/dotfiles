#!/usr/bin/env bash

languages=`echo "nodejs bash c cpp" | tr ' ' '\n'`
postit=`echo "regex ANSI-esc-seq" | tr ' ' '\n'`
core_utils=`echo "xargs chmod mv sed awk mkdir tar" | tr ' ' '\n'`

selected=`printf "$languages\n$postit\n$core_utils" | fzf`

if printf $postit | grep -qs $selected; then
    less -R "$HOME/dotfiles/postit/${selected}.txt"
    exit 0
fi 

read -p "query: " query

if printf $languages | grep -qs $selected; then
    curl cht.sh/$selected/`echo $query | tr ' ' '+'` | less
else
    curl cht.sh/$selected~$query | less
fi

