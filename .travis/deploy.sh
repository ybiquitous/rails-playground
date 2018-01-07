#!/bin/bash
set -ev

bundle exec rails diagram:all
git add doc

cat <<MSG | git commit --file -
docs: update class diagrams

[skip ci]
MSG

git push --force --quiet \
    "https://${GH_TOKEN}@github.com/ybiquitous/rails-playground.git" \
    "HEAD:${TRAVIS_BRANCH}"
