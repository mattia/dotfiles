#!/bin/sh

set -o errexit -o nounset

echo "Copying Xcode theme…"

mkdir -p ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
cp ~/.dotfiles/Xcode/*.xccolortheme ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
cp ~/.dotfiles/Xcode/*.dvtcolortheme ~/Library/Developer/Xcode/UserData/FontAndColorThemes/

echo "Successfully installed Xcode themes."
