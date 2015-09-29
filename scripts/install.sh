#!/bin/bash

if [ -d "uno-zen" ]; then
  echo "uno-zen already installed."
  echo "Perhaps you want to run the update script: sh scripts/update.sh"
  exit
fi

git clone https://github.com/Kikobeats/uno-zen.git && cd uno-zen

. "$PWD"/scripts/utils.sh

welcome

echo "Getting the repository tagged commits"
git fetch --tags

echo "Resolving the latest tagged version"
latestTag=$(git describe --tags "$(git rev-list --tags --max-count=1)")

echo "Creating a stable branch from the latest tagged version"
git checkout "$latestTag"
git checkout -b stable

echo "Theme Installed Successful! Enjoy :-)"
