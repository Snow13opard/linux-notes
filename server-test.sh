if curl -s https://raw.githubusercontent.com/Snow13opard/linux-notes/master/test.html  | grep -q 'iso777'; then
echo "test worked"
else
echo "test failed"
echo "uh oh web server went offline!" > msg.txt
ssmtp recipient_name@gmail.com < msg.txt
fi
