#!/bin/bash
# https://tutorialforlinux.com/2017/10/15/how-to-install-oracle-jdk-9-on-ubuntu-17-10-artful-easy-guide/

read -p "Download idea...tar.gz and put in Download..."

tar xvzf ~/Downloads/idea*.tar.gz -C /tmp/

sudo chown -R root:root /tmp/idea*

sudo mv /tmp/idea* /opt/idea

sudo ln -s /opt/idea/bin/idea.sh /usr/local/bin/idea.sh



