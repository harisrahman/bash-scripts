#!/bin/bash

#vars
original_branch=$(git branch --show-current)
date=$(date)
epoch=$(date +%s)
new_branch=temp-save-$epoch

# if 'remove old' argument is passed
if [[ $1 == "-ro" || $2 == "-ro" ]]; then
	git branch -D `git branch --list 'temp-save-*'` 2>/dev/null
fi

# stash everything
git stash -u

# switch on temp branch with time stamp
git checkout -b $new_branch

git stash apply
git add .
git commit -m "temp at $date"

# if 'no push' argument is not passed the push
if [[ $1 != "-np" && $2 != "-np" ]]; then
	git push origin $new_branch
fi

git checkout $original_branch
# apply stash and delete it
git stash pop

