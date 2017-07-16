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

BASHRC_PATH="$PARENT_DIR/files/.bashrc"
grep -q $BASHRC_PATH $HOME/.bashrc \
    || cat >> $HOME/.bashrc <<EOF
# load dotfiles-instant/files/.bashrc
# https://github.com/hekt/dotfiles-instant
if [ -f $BASHRC_PATH ]; then
   . $BASHRC_PATH
fi
EOF

ZSHRC_PATH="$PARENT_DIR/files/.zshrc"
grep -q $ZSHRC_PATH $HOME/.zshrc \
     || cat >> $HOME/.zshrc <<EOF
# load dotfiles-instant/files/.zshrc
# https://github.com/hekt/dotfiles-instant
if [ -f $ZSHRC_PATH ]; then
   . $ZSHRC_PATH
fi
EOF
