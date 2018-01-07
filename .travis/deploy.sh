#!/bin/bash
set -ev

bin/rails diagram:all
git add doc

cat <<MSG | git commit --file -
docs: update class diagrams

[skip ci]
MSG

git push --force --quiet \
    "https://${GH_TOKEN}@github.com/ybiquitous/rails-playground.git" \
    "HEAD:${TRAVIS_BRANCH}"
