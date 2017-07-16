#!/bin/bash

set -e
set -u

PARENT_DIR=$(cd $(dirname $0); cd ..; pwd)
VERSION_FILE=${PARENT_DIR}/git_version

if [ ! -e $VERSION_FILE ]; then
    git version > $VERSION_FILE
    exit 0
fi

CURRENT_VERSION=`git version`
LATEST_VERSION=`cat ${VERSION_FILE}`

if [ "$CURRENT_VERSION" != "$LATEST_VERSION" ]; then
    git version > $VERSION_FILE
fi
