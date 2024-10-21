#! /bin/sh
#
# install-firefox.sh
# Copyright (C) 2024 [Anselmos](github.com/anselmos) <anselmos@users.noreply.github.com>
#
# Distributed under terms of the MIT license.
#


wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | gpg --dearmor | sudo tee /etc/apt/keyrings/packages.mozilla.org.gpg > /dev/null

echo "Types: deb
URIs: https://packages.mozilla.org/apt
Suites: mozilla
Components: main
Signed-By: /etc/apt/keyrings/packages.mozilla.org.gpg
" >> /etc/apt/sources.list.d/mozilla.sources

echo "Package: firefox*
Pin: origin packages.mozilla.org
Pin-Priority: 1001
" >> /etc/apt/preferences.d/mozilla

echo "Unattended-Upgrade::Origins-Pattern { "archive=mozilla"; };" >> /etc/apt/apt.conf.d/51unattended-upgrades-firefox
apt update
apt install -y firefox
