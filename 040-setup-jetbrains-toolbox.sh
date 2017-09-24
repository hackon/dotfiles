#!/bin/bash

wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.4.2492.tar.gz

tar zxvf jetbrains-toolbox-1.4.2492.tar.gz

cd jetbrains-toolbox-1.4.2492

./jetbrains-toolbox 

unlink $HOME/bin/toolbox

ln -s $HOME/.local/share/JetBrains/Toolbox/bin/jetbrains-toolbox $HOME/bin/toolbox

cd ..
rm jetbrains-toolbox-1.4.2492.tar.gz

cp -r $HOME/.profile $HOME/.zprofile
