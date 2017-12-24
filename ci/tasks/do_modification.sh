#!/bin/sh

set -e # fail fast
set -x # print commands

git clone repo updated-repo

cd updated-repo
echo $(date) > test.md

git config --global user.email "nobody@concourse.ci"
git config --global user.name "Concourse"

git add .
git commit -m "Applied modification"
