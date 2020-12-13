#!/bin/sh

set -o errexit -o nounset

echo "Neovim python provider"
pip3 install --user --upgrade neovim

echo "Neovim Node provider"
npm install -g neovim
