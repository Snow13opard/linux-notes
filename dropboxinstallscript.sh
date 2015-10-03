#!/bin/bash
wget -O /sbin/dropbox.py https://www.dropbox.com/download?dl=packages/dropbox.py
chmod +x /sbin/dropbox.py
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -

read -p "Are you sure? " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    ~/.dropbox-dist/dropboxd & dropbox.py restart
fi
exit
