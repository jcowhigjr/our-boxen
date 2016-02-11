#!/usr/bin/env bash

REPO=/opt/boxen/repo

if [ $# -eq 0 ]; then
  echo "dude, come on. what do you want to edit?"
  echo "manifest? hiera?. gimmie something, mang"
  exit 1
fi

TYPE=$1
case $TYPE in
  manifest)
    FILE="${REPO}/modules/people/manifests/jcowhigjr.pp"
    ;;
  hiera)
    FILE="${REPO}/hiera/users/jcowhigjr.yaml"
    ;;
  *)
    echo "mang, what even is that? try again"
    exit 1
    ;;
esac

vi $FILE
