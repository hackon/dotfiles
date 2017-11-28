#!/bin/bash
# https://tutorialforlinux.com/2017/05/02/how-to-install-oracle-jdk-8-on-ubuntu-17-04-zesty-32-64bit-linux-easy-guide/

# wget --no-check-certificate -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u151-b12/e758a0de34e24606bca991d704f6dcbf/jdk-8u151-linux-x64.tar.gz

read -p "Download jdk8...tar.gz and put in Download..."

tar xvzf ~/Downloads/jdk-8*.tar.gz -C /tmp/

sudo su

if [ ! -d "/usr/lib/jvm" ]; then mkdir /usr/lib/jvm; fi

chown -R root:root /tmp/jdk1.8*

chmod -R +x /tmp/jdk1.8*/bin

mv /tmp/jdk1.8* /usr/lib/jvm/

update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk1.8*/bin/java 1065

update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/jdk1.8*/bin/javac 1065

update-alternatives --install /usr/bin/jar jar /usr/lib/jvm/jdk1.8*/bin/jar 1065

update-alternatives --install /usr/bin/javaws javaws /usr/lib/jvm/jdk1.8*/bin/javaws 1065

#Switch back to user
su hackon

DIR=`ls -d /usr/lib/jvm/* | grep 8`

echo "export JAVA_HOME=$DIR" >> ~/.bashrc
echo "export JAVA_HOME=$DIR" >> ~/.zshrc #<< Maybe different


