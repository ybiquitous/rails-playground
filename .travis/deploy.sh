#!/bin/bash
set -e

bin/rails diagram:all
git add doc
git commit -m 'update class diagrams'
git push --force --quiet "https://${GH_TOKEN}@github.com/ybiquitous/rails-playground.git" >/dev/null 2>&1
