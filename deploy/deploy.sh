#!/bin/sh

if [ ! -f deploy/key1 ]; then exit; fi
if [ -z "$TRAVIS_BRANCH" ]; then exit; fi

BRANCH_DIR="$TRAVIS_BRANCH"

if [ "$TRAVIS_PULL_REQUEST" != false ]; then
    if [ "$TRAVIS_BRANCH" != main ]; then exit; fi

    BRANCH_DIR="pull-$TRAVIS_PULL_REQUEST"
fi

export SSH_KEYFILE="$(readlink -f deploy/key1)"
export GIT_SSH="$(readlink -f deploy/ssh.sh)"
git clone -b gh-pages git@github.com:trumpnode/web-7.0.git .deploy || exit 1
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
cd ../..

if [ "$TRAVIS_BRANCH" = main -a "$TRAVIS_PULL_REQUEST" = false ]; then
    rm -rf .deploy
    export SSH_KEYFILE="$(readlink -f deploy/key2)"
    export GIT_SSH="$(readlink -f deploy/ssh.sh)"
    git clone git@github.com:trumpnode/trumpnode.github.io.git .deploy || exit 1
    cd .deploy || exit 1
    git config user.name travis
    git config user.email travis@nowhere
    git ls-files -z | grep -vzZE '^(README.md|LICENSE|CNAME)$' | xargs -0 rm -f
    cp -r ../out/* .
    git add -A
    git commit -m "travis: $TRAVIS_COMMIT"
    git push || exit 1
    cd ..
fi
