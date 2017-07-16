#!/bin/bash

set -e
set -u

PARENT_DIR=$(cd $(dirname $0); cd ..; pwd)
FILES=(
    ".gitconfig"
    ".dir_colors"
    ".inputrc"
    ".nanorc"
    ".git.d"
    ".zsh.d"
)

for f in ${FILES[@]}; do
    if [ ! -e $HOME/$f ] || [ -h $HOME/$f ]; then
        ln -fns $PARENT_DIR/files/$f $HOME/$f
    fi
done
