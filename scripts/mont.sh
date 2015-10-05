#!/bin/bash
# Sees if ghost Is running

if systemctl is-active ghost.service  | grep 'active'; then
   sleep 3
   else
   cd ~
   timestamp=$(date)
   message="Oh no! The web server went offline."
   echo $timestamp > msg.txt
   echo $message >> msg.txt
   ssmtp recipient_name@gmail.com < msg.txt

fi
