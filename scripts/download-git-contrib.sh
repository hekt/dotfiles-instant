#!/bin/bash

set -e
set -u

PARENT_DIR=$(cd $(dirname $0); cd ..; pwd)
FILE="${PARENT_DIR}/files/.git.d/contrib/${1}"

GIT_VERSION=`git --version | sed -e 's/^git version //'`
URL="https://raw.githubusercontent.com/git/git/v${GIT_VERSION}/contrib/${1}"

curl -fs --create-dirs $URL -o $FILE
