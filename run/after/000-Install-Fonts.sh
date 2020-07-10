#!/bin/sh

set -o errexit -o nounset

echo "Installing fonts…"

mkdir -p ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
cp ~/.dotfiles/Fonts/*.ttf ~/Library/Fonts

echo "Successfully installed fonts."