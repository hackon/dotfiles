#!/bin/bash

sudo apt install -y numlockx
numlockx on

sudo apt install -y feh lxappearance scrot pasystray paman paprefs pavumeter

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install libcurl3 -y
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

sudo apt install -f -y

#spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update
sudo apt install -y spotify-client

sudo apt install -y catfish clementine curl evolution focuswriter frei0r-plugins gimp glances
sudo apt install -y gparted hardinfo inxi openshot ppa-purge radiotray scrot shutter vnstat
sudo apt install -y winbind vlc breeze-cursor-theme tmux tmuxinator

sudo apt install -y p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack arj cabextract file-roller

sudo apt install -y gnome-tweak-tool compizconfig-settings-manager

sudo apt install -y gnome-themes-standard

sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update

sudo apt install -y oracle-java8-installer oracle-java8-set-default

sudo apt install -y maven gradle

curl -s "https://get.sdkman.io" | zsh
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install gradle
