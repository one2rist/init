echo ""
echo "installing unity hub"
echo ""
sudo sh -c 'echo "deb https://hub.unity3d.com/linux/repos/deb stable main" > /etc/apt/sources.list.d/unityhub.list'
wget -qO - https://hub.unity3d.com/linux/keys/public | sudo apt-key add -
sudo apt update
sudo apt-get -y install unityhub

echo ""
echo "installing dev tools"
echo ""
sudo apt -y install curl
sudo apt -y install build-essential
sudo apt -y install cmake
sudo apt -y install gitk

echo ""
echo "installing QT"
echo ""
sudo apt -y install qtcreator
sudo apt -y install qt5-default
sudo apt -y install qtdeclarative5-dev
sudo apt -y install qt5-doc qtbase5-examples qtbase5-doc-html

echo ""
echo "installing usefull stuff"
echo ""
sudo apt -y install pinta
sudo apt -y install kazam
sudo apt -y install htop
sudo apt -y install adb

sudo snap install slack --classic
sudo snap install code --classic
sudo snap install android-studio --classic
sudo snap install scrcpy

echo ""
echo "upgrading all"
echo ""
sudo apt upgrade

