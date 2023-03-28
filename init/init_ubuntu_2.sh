sudo apt update

echo ""
echo "installing chrome"
echo ""
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt update
sudo apt install google-chrome-stable

echo ""
echo "installing dev tools"
echo ""
sudo apt install build-essential
sudo apt install cmake
sudo apt install gitk

echo ""
echo "installing virtualbox"
echo ""
sudo apt install virtualbox
sudo apt install virtualbox-ext-pack -y

echo ""
echo "installing unity hub"
echo ""
sudo sh -c 'echo "deb https://hub.unity3d.com/linux/repos/deb stable main" > /etc/apt/sources.list.d/unityhub.list'
wget -qO - https://hub.unity3d.com/linux/keys/public | sudo apt-key add -
sudo apt update
sudo apt-get install unityhub


echo ""
echo "installing QT"
echo ""
sudo apt install qtcreator
sudo apt install qt5-default
sudo apt install qtdeclarative5-dev
sudo apt install qt5-doc qtbase5-examples qtbase5-doc-html


echo ""
echo "installing usefull stuff"
echo ""
sudo apt install pinta
sudo apt install kazam
sudo apt install htop
sudo apt install adb
sudo snap install slack --classic
sudo snap install code --classic
sudo snap install android-studio --classic
snap install scrcpy




echo ""
echo "updating all"
echo ""
sudo apt update && apt upgrade

