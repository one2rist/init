echo ""
echo "installing dev tools"
echo ""
sudo apt -y install python3-pip
sudo apt -y install curl
sudo apt -y install build-essential
sudo apt -y install cmake
sudo apt -y install gitk
sudo apt -y install clang-format
sudo apt -y install net-tools
sudo pip install cmakelang

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
sudo apt -y install mlocate

sudo snap install slack --classic
sudo snap install code --classic
sudo snap install android-studio --classic
sudo snap install scrcpy
sudo snap install docker
sudo groupadd docker
sudo usermod -aG docker $USER

echo ""
echo "upgrading all"
echo ""
sudo apt upgrade

