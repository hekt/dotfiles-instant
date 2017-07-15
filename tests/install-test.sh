#!/bin/bash

set -e
set -u
set -x

# symlink exists
test -h $HOME/.gitconfig
test -h $HOME/.dir_colors
test -h $HOME/.inputrc
test -h $HOME/.nanorc
test -h $HOME/.git.d
test -h $HOME/.zsh.d

# git contribs exists
test -f $HOME/.git.d/contrib/git-prompt.sh
test -f $HOME/.git.d/contrib/git-completion.bash

# shell rcs exists
test -f $HOME/.bashrc
test -f $HOME/.zshrc

# shell rcs updated
grep "dotfiles-instant/.bashrc" $HOME/.bashrc
grep "dotfiles-instant/.zshrc" $HOME/.zshrc
