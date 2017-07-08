#!/bin/bash

set -u

PARENT_DIR=$(cd $(dirname $0); cd ..; pwd)
FILES=(
    ".dir_colors"
    ".gitignore.global"
    ".inputrc"
    ".nanorc"
    ".zsh.d"
)

for f in ${FILES[@]}; do
    ln -s $PARENT_DIR/$f $HOME/$f
done
