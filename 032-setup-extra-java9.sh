#!/bin/bash
# https://tutorialforlinux.com/2017/10/15/how-to-install-oracle-jdk-9-on-ubuntu-17-10-artful-easy-guide/

read -p "Download jdk9...tar.gz and put in Download..."

tar xvzf ~/Downloads/jdk-9*.tar.gz -C /tmp/

sudo su

if [ ! -d "/usr/lib/jvm" ]; then mkdir /usr/lib/jvm; fi

chown -R root:root /tmp/jdk-9*

chmod -R +x /tmp/jdk-9*/bin

mv /tmp/jdk-9* /usr/lib/jvm/

update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-9*/bin/java 1060

update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/jdk-9*/bin/javac 1060

update-alternatives --install /usr/bin/jar jar /usr/lib/jvm/jdk-9*/bin/jar 1060

update-alternatives --install /usr/bin/javaws javaws /usr/lib/jvm/jdk-9*/bin/javaws 1060

#Switch back to user
su hackon

DIR=`ls -d /usr/lib/jvm/* | grep 9`

echo "export JAVA_HOME=$DIR" >> ~/.bashrc
echo "export JAVA_HOME=$DIR" >> ~/.zshrc #<< Maybe different


