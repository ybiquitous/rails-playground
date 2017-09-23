#!/bin/bash
set -ev

bin/rails diagram:all
git add doc
git commit -m 'update class diagrams'
git show
git push --force --quiet "https://${GH_TOKEN}@github.com/ybiquitous/rails-playground.git"
