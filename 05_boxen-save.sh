#!/usr/bin/env bash

if [ $# -eq 0 ]; then
  echo "dude, come on. commit message"
  exit 1
fi

COMMIT_MESSAGE=$1

cd /opt/boxen/repo
git commit -am "cli save: ${COMMIT_MESSAGE}"
git push origin master
