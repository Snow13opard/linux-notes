#!/bin/bash
wget -O /sbin/dropbox.py https://www.dropbox.com/download?dl=packages/dropbox.py
chmod +x /sbin/dropbox.py
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
echo "Are you sure?"
read yesno

if [ $yesno = y* ]
        then ~/.dropbox-dist/dropboxd && dropbox.py restart | sleep 3
        else exit 1
fi
