#!/bin/sh

# First parameter will be source file path
# Second parameter will be dest file path
branchName = $1
srcFile = $2
destFile = $3
echo $branchName
echo $srcFile
echo $destFile
echo aditya
git checkout -b $branchName
git mv srcFile destFile
git add .
git commit -m "Renamed file"
git checkout HEAD~ srcFile
git add .
git commit -m "Restored file" 
# Checking to parent branch
git checkout -

# # Merging content to child branch with parent without fast-forward
# git merge --no-ff dup
# # Getting the current branch
# currentBranch=$(git symbolic-ref --short -q HEAD)
# git push origin $currentBranch