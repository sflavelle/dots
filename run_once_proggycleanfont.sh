#!/bin/sh
command -v unzip >/dev/null 2>&1 || { echo >&2 "Installing ProggyClean Nerd Fonts for Waybar requires unzip. Aborting."; exit 1; }
command -v curl >/dev/null 2>&1 || { echo >&2 "Installing ProggyClean Nerd Fonts for Waybar requires curl. Aborting."; exit 1; }

set -ex

mkdir ~/.fonts
curl -o ~/.fonts/ProggyCNerdFont.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/ProggyClean.zip
mkdir ~/.fonts/ProggyClean
unzip ProggyCNerdFont.zip -d ~/.fonts/ProggyClean
echo "Installed ProggyClean nerd fonts!"
