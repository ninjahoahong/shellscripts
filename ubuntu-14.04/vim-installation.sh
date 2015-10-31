sudo apt-get install -y vim
git clone git@github.com:ninjahoahong/VIM-configuration.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim && git submodule init && git submodule update
