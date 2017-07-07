#!/bin/bash

set -e
set -u

PARENT_DIR=$(cd $(dirname $0); cd ..; pwd)
BASHRC_PATH="$PARENT_DIR/.bashrc"

cat >> $HOME/.bashrc <<EOF
if [ -f $BASHRC_PATH ]; then
   . $BASHRC_PATH
fi
EOF

set +e

ln -s $PARENT_DIR/.dir_colors $HOME/.dir_colors
ln -s $PARENT_DIR/.git-completion.bash $HOME/.git-completion.bash
ln -s $PARENT_DIR/.git-prompt.sh $HOME/.git-prompt.sh
ln -s $PARENT_DIR/.gitconfig $HOME/.gitconfig
ln -s $PARENT_DIR/.gitignore.global $HOME/.gitignore.global
ln -s $PARENT_DIR/.nanorc $HOME/.nanorc
