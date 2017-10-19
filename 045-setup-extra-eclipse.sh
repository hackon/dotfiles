#!/bin/bash
# https://tutorialforlinux.com/2017/10/15/how-to-install-oracle-jdk-9-on-ubuntu-17-10-artful-easy-guide/

read -p "Download eclipse...tar.gz and put in Download..."

tar xvzf ~/Downloads/eclipse*.tar.gz -C /tmp/

sudo chown -R root:root /tmp/eclipse

sudo mv /tmp/eclipse /opt/

sudo ln -s /opt/eclipse/eclipse /usr/local/bin/eclipse



