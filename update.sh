#!/bin/zsh
# Point the burny formula at a published release: ./update.sh 1.4.0
set -e
cd "$(dirname "$0")"
V=${1:?usage: ./update.sh <version>}
URL="https://github.com/giacolaiacomo/burny/archive/refs/tags/v$V.tar.gz"
SHA=$(curl -fsSL "$URL" | shasum -a 256 | cut -d' ' -f1)
sed -i '' -E "s#^  url \".*\"#  url \"$URL\"#; s#^  sha256 \".*\"#  sha256 \"$SHA\"#" Formula/burny.rb
echo "✓ burny $V  sha256 $SHA"
