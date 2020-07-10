#!/bin/sh
# Set DuckDuckGo as the default search engine.
set -eu

echo "Setting search engine to DuckDuckGo…"

defaults write -g NSPreferredWebServices "{NSWebServicesProviderWebSearch = { NSDefaultDisplayName = DuckDuckGo; NSProviderIdentifier = \"com.duckduckgo\"; }; }"
defaults write com.apple.Safari SearchProviderIdentifier -string "com.duckduckgo"
