#!/bin/bash

set -e
set -u

PARENT_DIR=$(cd $(dirname $0); cd ..; pwd)
BASHRC_PATH="$PARENT_DIR/.bashrc"
ZSHRC_PATH="$PARENT_DIR/.zshrc"

cat >> $HOME/.bashrc <<EOF
# load dotfiles-instant/.bashrc
# https://github.com/hekt/dotfiles-instant
if [ -f $BASHRC_PATH ]; then
   . $BASHRC_PATH
fi
EOF

cat >> $HOME/.zshrc <<EOF
# load dotfiles-instant/.bashrc
# https://github.com/hekt/dotfiles-instant
if [ -f $ZSHRC_PATH ]; then
   . $ZSHRC_PATH
fi
EOF

set +e

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
