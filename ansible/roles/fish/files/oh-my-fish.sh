#!/bin/bash
curl -L http://get.oh-my.fish > /tmp/oh-my-fish-install
expect -c "
set timeout 180
spawn fish /tmp/oh-my-fish-install --path=~/.local/share/omf --config=~/.config/omf
expect \"Would you like to remove the existing installation? (y/N):\"
send -- \"y\n\"
expect \"Are you sure you want to continue? (y/N):\"
send -- \"y\n\"
"
