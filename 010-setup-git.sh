#!/bin/bash

sudo apt install vim git zsh wget -y

wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh

echo "run 'chsh -s \`which zsh\` '"

echo "then restart 'sudo shutdown -r 0'"

