#!/usr/bin/env bash

languages=(nodejs bash c cpp)
postit=(regex ANSI-esc-seq)
core_utils=(xargs chmod mv sed awk mkdir tar ln)

selected=$(printf "%s\n" "${languages[@]}" "${postit[@]}" "${core_utils[@]}" | fzf)

if [[ " ${postit[*]} " == *" $selected "* ]]; then
    less -R "$HOME/dotfiles/postit/${selected}.txt"
    exit 0
elif [[ " ${core_utils[*]} " == *" $selected "* ]] ; then 
    cht.sh $selected | less
    exit 0
fi

read -p "query: " query

if  [[ " ${languages[*]} " == *"$selected"* && -n "$query" ]]; then
    cht.sh $selected $query | less
else
    cht.sh $selected :learn | less
fi

