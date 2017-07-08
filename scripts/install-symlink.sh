#!/bin/bash

set -u

PARENT_DIR=$(cd $(dirname $0); cd ..; pwd)
FILES=(
    ".dir_colors"
    ".git-completion.bash"
    ".git-prompt.sh"
    ".gitignore.global"
    ".inputrc"
    ".nanorc"
    ".zsh"
)

for f in ${FILES[@]}; do
    ln -s $PARENT_DIR/$f $HOME/$f
done
