if curl -s https://raw.githubusercontent.com/Snow13opard/linux-notes/master/test.html  | grep -q 'iso777'; then
echo "test worked"
else
echo "test failed"
fi
