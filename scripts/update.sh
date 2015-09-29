#!/bin/bash

."$PWD"/scripts/utils.sh

welcome

currentVersion=$(git describe)
echo " Your current version is $currentVersion."

echo " Searching for updates..."
git fetch --tags origin
latestTag=$(git describe --tags "$(git rev-list --tags --max-count=1)")

if [ "$currentVersion" == "$latestTag" ]
then
  echo "\n You already have the latest version."
else
  echo " Updating $currentVersion to $latestTag..."
  git merge "$latestTag"

fi
