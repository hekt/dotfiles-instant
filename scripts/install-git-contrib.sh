#!/bin/bash

set -e
set -u

GIT_VERSION=`git --version | sed -e 's/^git version //'`
GH_URL_1='https://raw.githubusercontent.com/git/git/v'
GH_URL_2='/contrib/completion/'

if [ -e $HOME/.git-prompt.sh ]; then
    echo ".git-prompt.sh already exists"
else
    GIT_PROMPT_URL="${GH_URL_1}${GIT_VERSION}${GH_URL_2}git-prompt.sh"
    echo "download from ${GIT_PROMPT_URL}"
    curl -fs $GIT_PROMPT_URL > $HOME/.git-prompt.sh
fi

if [ -e $HOME/.git-completion.bash ]; then
    echo ".git-completion.bash already exists"
else
    GIT_COMPLETION_URL="${GH_URL_1}${GIT_VERSION}${GH_URL_2}git-completion.bash"
    echo "download from ${GIT_COMPLETION_URL}"
    curl -fs $GIT_COMPLETION_URL > $HOME/.git-completion.bash
fi
