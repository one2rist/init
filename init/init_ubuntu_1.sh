echo ""
echo "installing git"
echo ""
sudo apt install git


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

