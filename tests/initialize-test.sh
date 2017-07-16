#!/bin/bash

set -e
set -u
set -x

PARENT_DIR=$(cd $(dirname $0); cd ..; pwd)

# git contribs
test -f $PARENT_DIR/files/.git.d/contrib/git-prompt.sh
test -f $PARENT_DIR/files/.git.d/contrib/git-completion.bash
