#!/bin/bash

# this script will iterate through the git repos and update them


find ~/repos -maxdepth 1 -mindepth 1 -type d | while read dir; do
  echo "$dir"
  echo
  cd $dir
  git status
  echo && echo
  git pull
  echo && echo && echo
done


echo "All git repos updated"

