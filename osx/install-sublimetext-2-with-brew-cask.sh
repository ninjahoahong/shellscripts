#!/bin/bash

# Update
brew doctor
brew update
brew cask update

# Install sublime text 2
brew cask install sublime-text

# Install plugins
cd ~/Library/Application\ Support/Sublime\ Text\ 2/Packages
if [ -d "TrailingSpaces" ]; then
  cd TrailingSpaces
  git checkout master
  git pull origin master
else
  git clone git://github.com/SublimeText/TrailingSpaces.git
fi
