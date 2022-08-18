#!/bin/bash

VERSION_NUM=0.1.0

#%include checkbox_input.sh

branches=($(git branch | tr -d " *"))
checkbox_input "Which branch do you want to delete?" branches selected_branches

if [ -z "$selected_branches" ]; then
  echo "No branch to delete."
else
  git branch -D $(join selected_branches | tr -d ",")
fi
