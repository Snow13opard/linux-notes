#!/bin/bash
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -

echo "Do you wish to install this program?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) ~/.dropbox-dist/dropboxd; break;;
        No ) exit;;
    esac
done
exit
