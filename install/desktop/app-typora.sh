#!/bin/bash

# Temporarily switch away from using Typora repo which is broken.
#
#curl -sS https://typora.io/linux/public-key.asc | \
#sudo gpg --dearmor --yes --output /usr/share/keyrings/typora.gpg
#
#echo "deb [arch=amd64 signed-by=/usr/share/keyrings/typora.gpg] https://typora.io/linux ./" | sudo tee /etc/apt/sources.list.d/typora.list
#sudo apt-get update
#sudo apt-get install -y typora

# Install with db
cd /tmp
wget -O typora.deb "https://downloads.typora.io/linux/typora_1.10.8_amd64.deb"
sudo apt install -y /tmp/typora.deb
rm typora.deb
cd -

# Add iA Typora theme
mkdir -p ~/.config/Typora/themes
cp ~/.local/share/omakub/configs/typora/ia_typora.css ~/.config/Typora/themes/
cp ~/.local/share/omakub/configs/typora/ia_typora_night.css ~/.config/Typora/themes/
