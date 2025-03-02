#!/bin/bash

# Display system information in the terminal
cd /tmp
FASTFETCH_VERSION="2.37.0" # Use known good version
wget -qO fastfetch.deb "https://github.com/fastfetch-cli/fastfetch/releases/download/$FASTFETCH_VERSION/fastfetch-linux-amd64.deb"
sudo apt install -y ./fastfetch.deb
rm fastfetch.deb
cd -

# Only attempt to set configuration if fastfetch is not already set
if [ ! -f "$HOME/.config/fastfetch/config.jsonc" ]; then
  # Use Omakub fastfetch config
  mkdir -p ~/.config/fastfetch
  cp ~/.local/share/omakub/configs/fastfetch.jsonc ~/.config/fastfetch/config.jsonc
fi
