#!/bin/sh

sudo apt update
sudo apt upgrade -y

sudo apt-get install libcairo2-dev -y
sudo apt-get install libjpeg62-turbo-dev -y
sudo apt-get install libpng12-dev -y
sudo apt-get install libossp-uuid-dev -y

sudo apt-get install libavcodec-dev libavutil-dev libswscale-dev -y 
sudo apt-get install libpango1.0-dev -y
sudo apt-get install libssh2-1-dev -y
sudo apt-get install libtelnet-dev -y
sudo apt-get install libvncserver-dev -y
sudo apt-get install libpulse-dev -y
sudo apt-get install libssl-dev -y
sudo apt-get install libvorbis-dev -y
sudo apt-get install libwebp-dev -y

sudo apt-get install -y xrdp





sudo apt-get install -y libcairo2-dev libjpeg62-turbo-dev libpng12-dev libossp-uuid-dev libvncserver-dev freerdp-x11 libssh-dev libssh2-1-dev libfreerdp-dev libtelnet-dev

sudo apt-get update && sudo apt-get install oracle-java8-jdk
export JAVA_HOME=/usr/lib/jvm/jdk-8-oracle-arm32-vfp-hflt

cp ~/nas/guacamole-client-1.0.0.tar.gz ~/guacamole-client-1.0.0.tar.gz
cp ~/nas/guacamole-server-1.0.0.tar.gz ~/guacamole-server-1.0.0.tar.gz

tar xzf guacamole-server-1.0.0.tar.gz
cd guacamole-server-1.0.0
./configure --with-init-dir=/etc/init.d
make
sudo make install
sudo update-rc.d guacd defaults
sudo ldconfig



sudo apt-get install maven
tar xzf guacamole-client-1.0.0.tar.gz
cd guacamole-client-1.0.0
mvn package


sudo apt-get install jetty9 -y

sudo cp guacamole/target/guacamole-1.0.0.war /var/lib/jetty9/webapps/guacamole.war
sudo mkdir -p /etc/guacamole/extensions
sudo cp extensions/guacamole-auth-noauth/target/guacamole-auth-noauth-1.0.0.jar /etc/guacamole/extensions/.




















