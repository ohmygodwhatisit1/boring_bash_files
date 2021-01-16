#! /bin/sh
#sudo cp .bashrc ~/.bashrc
sudo apt update
sudo apt upgrade
sudo apt install $(grep -vE "^\s*#" list.txt  | tr "\n" " ")
sudo cp .bashrc ~/.bashrc

sudo gem install bundler sinatra redis
echo 'please reboot me'
