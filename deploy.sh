#!/bin/sh

if [ -z "$TRAVIS_BRANCH" ]; then exit; fi
if [ ! "$TRAVIS_BRANCH" = master ]; then exit; fi

export SSH_KEYFILE="$(readlink -f .deploy-key)"
export GIT_SSH="$(readlink -f ssh.sh)"
git clone -b gh-pages git@github.com:freenode/web-7.0.git .deploy
cd .deploy
rm -rf *
cp -r ../out/* .
cp -r ../static .
git add -A
git commit -m "travis: $TRAVIS_COMMIT"
git push
