fooVar=$(curl https://dl.dropboxusercontent.com/u/65211911/new.txt)
$fooVar
if [ $fooVar = hi ]
then
echo "Hi I like Apples! Thank you."
else
echo "Oh no! Teh epic ducky doesn't like dem apples RUN!"
fi
