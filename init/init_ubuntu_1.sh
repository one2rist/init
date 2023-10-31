echo ""
echo "installing git"
echo ""
sudo apt install git

echo ""
echo "installing chrome"
echo ""
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt update
sudo apt install google-chrome-stable

echo ""
echo "adding ssh-key"
echo ""
ssh-keygen -t ed25519 -C "igorbakulin@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat .ssh/id_rsa.pub

echo ""
echo "now add key to github"
echo ""

