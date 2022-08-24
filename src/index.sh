#!/bin/bash

VERSION_NUM=0.2.0

#%include checkbox_input.sh
#%include text_input.sh

branches=($(git branch | tr -d " *"))
checkbox_input "Which branch do you want to delete?" branches selected_branches

if [ -z "$selected_branches" ]; then
  echo "No branch to delete."
else
  git branch -D $(join selected_branches | tr -d ",")
fi

branches=($(git branch | tr -d " *"))
checkbox_input "Which branch do you want to rename?" branches selected_branches

if [ -z "$selected_branches" ]; then
  echo "No branch to rename."
else
  for selected_branch in $(join selected_branches | tr -d ","); do
    text_input "What's the new name for branch $selected_branch?" name
    git branch -m $selected_branch $name
  done
fi
