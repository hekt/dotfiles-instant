#!/bin/bash

set -e
set -u

PARENT_DIR=$(cd $(dirname $0); cd ..; pwd)
BASHRC_PATH="$PARENT_DIR/files/.bashrc"
ZSHRC_PATH="$PARENT_DIR/files/.zshrc"

cat >> $HOME/.bashrc <<EOF
# load dotfiles-instant/files/.bashrc
# https://github.com/hekt/dotfiles-instant
if [ -f $BASHRC_PATH ]; then
   . $BASHRC_PATH
fi
EOF

cat >> $HOME/.zshrc <<EOF
# load dotfiles-instant/files/.zshrc
# https://github.com/hekt/dotfiles-instant
if [ -f $ZSHRC_PATH ]; then
   . $ZSHRC_PATH
fi
EOF
