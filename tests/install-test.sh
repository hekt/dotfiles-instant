#!/bin/bash

set -e
set -u
set -x

PARENT_DIR=$(cd $(dirname $0); cd ..; pwd)

# dotfile exists
DOT_FILES=`ls -A $PARENT_DIR/files`
for f in ${DOT_FILES[@]}; do
    test -e $HOME/$f
done

# symlink
test -h $HOME/.gitconfig
test -h $HOME/.dir_colors
test -h $HOME/.inputrc
test -h $HOME/.nanorc
test -h $HOME/.git.d
test -h $HOME/.zsh.d

# git contribs
test -f $HOME/.git.d/contrib/git-prompt.sh
test -f $HOME/.git.d/contrib/git-completion.bash

# shell rcs
test -f $HOME/.bashrc
test -f $HOME/.zshrc

# shell rcs once updated
BASHRC_PATH="$PARENT_DIR/files/.bashrc"
ZSHRC_PATH="$PARENT_DIR/files/.zshrc"
test 2 -eq `grep -q $BASHRC_PATH $HOME/.bashrc | wc -l`
test 2 -eq `grep -q $ZSHRC_PATH $HOME/.zshrc | wc -l`
