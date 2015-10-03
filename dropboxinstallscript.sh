#!/bin/bash
wget -O /sbin/dropbox.py https://www.dropbox.com/download?dl=packages/dropbox.py
chmod +x /sbin/dropbox.py
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -

echo "Do you wish to install this program?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo "dropbox.py restart" | at now + 3 minute && ~/.dropbox-dist/dropboxd; break;;
        No ) exit;;
    esac
done
exit
