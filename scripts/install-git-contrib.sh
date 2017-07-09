#!/bin/bash

set -e
set -u

GIT_VERSION=`git --version | sed -e 's/^git version //'`
GH_URL="https://raw.githubusercontent.com/git/git/v${GIT_VERSION}/contrib/"

GIT_PROMPT_URL="${GH_URL}completion/git-prompt.sh"
echo "download from ${GIT_PROMPT_URL}"
curl -fs $GIT_PROMPT_URL > $HOME/.git.d/contrib/git-prompt.sh

GIT_COMPLETION_URL="${GH_URL}completion/git-completion.bash"
echo "download from ${GIT_COMPLETION_URL}"
curl -fs $GIT_COMPLETION_URL > $HOME/.git.d/contrib/git-completion.bash
