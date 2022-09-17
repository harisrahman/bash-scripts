# save-to-temp-branch 

## Description

Saves current progress to a temporary branch with a time stamp and comes back to state of where it started.

## Add to git

`git config --global alias.save-to-temp-branch '!sh ~/scripts/git/save-to-temp-branch/script.sh'`

## Examples

`git save-to-temp-branch`

`git save-to-temp-branch -np -ro`

## Options

| Option    | Full Form  | Description                                                 |
|-----------|------------|-------------------------------------------------------------|
| `-np`     | no push    | Don't push to origin.                                       |
| `-ro`     | remove old | Removes all `temp-save-*`  branches created by this script. |
