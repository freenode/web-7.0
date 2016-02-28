#!/bin/sh

if [ ! -f .deploy-key ]; then exit; fi
if [ -z "$TRAVIS_BRANCH" ]; then exit; fi

BRANCH_DIR="$TRAVIS_BRANCH"

if [ "$TRAVIS_PULL_REQUEST" != false ]; then
    if [ "$TRAVIS_BRANCH" != master ]; then exit; fi

    BRANCH_DIR="pull-$TRAVIS_PULL_REQUEST"
fi

export SSH_KEYFILE="$(readlink -f .deploy-key)"
export GIT_SSH="$(readlink -f ssh.sh)"
git clone -b gh-pages git@github.com:freenode/web-7.0.git .deploy || exit 1
cd .deploy || exit 1
git config user.name travis
git config user.email travis@nowhere
git rm -r "$BRANCH_DIR/*"
mkdir -p "$BRANCH_DIR"
cd "$BRANCH_DIR" || exit 1
cp -r ../../out/* .
git add -A
git commit -m "travis: $TRAVIS_COMMIT"
git push || exit 1
