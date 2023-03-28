# install vim pathogen: pathogen.vim makes it super easy to install plugins and runtime files in their own private directories
sudo apt install vim-gtk3
mkdir -p ~/.vim/autoload
cd ~/.vim/autoload
git clone https://github.com/tpope/vim-pathogen.git
cp ./vim-pathogen/autoload/pathogen.vim .
# install vim components:
mkdir -p ~/.vim/bundle
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/altercation/vim-colors-solarized.git
git clone https://github.com/peterhoeg/vim-qml.git
git clone https://github.com/Vimjas/vim-python-pep8-indent.git
