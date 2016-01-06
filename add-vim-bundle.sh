#!/usr/bin/env bash

function addBundle {
    git subtree add --prefix vim/.vim/bundle/"$2" git@github.com:"$1"/"$2" master --squash
}

if [[ $# -ne 2 ]]; then
    echo "usage: ./add-vim-bundle.sh [user] [github-repo]"
    echo "example: ./add-vim-bundle.sh kien ctrlp.vim"
    exit
fi

addBundle "$1" "$2"
