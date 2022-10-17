echo "\r\n For which user type are you installing? (press 1 or 2, then press Enter)"
echo "  1) Regular user"
echo "  2) Developer"

read n
case $n in
  1) echo "You chose Option 1";;
  2) echo "You chose Option 2";;
  *) echo "invalid option";;
esac
