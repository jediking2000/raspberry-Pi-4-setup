#!/bin/sh

sudo apt update 
sudo apt upgrade -y
echo "updated system"

sudo apt-get install perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl apt-show-versions python -y
eecho "installed webmin prerequisites"

wget http://prdownloads.sourceforge.net/webadmin/webmin_1.910_all.deb

sudo dpkg --install webmin_1.910_all.deb

echo "webmin (should be) installed"


sudo apt-get install apt-transport-https ca-certificates software-properties-common -y

sudo curl -fsSL get.docker.com -o get-docker.sh && sh get-docker.sh
sudo usermod -aG docker pi

sudo curl https://download.docker.com/linux/raspbian/gpg

echo "deb https://download.docker.com/linux/raspbian/ stretch stable" >> /etc/apt/sources.list
sudo apt update 
sudo apt upgrade -y


systemctl start docker.service

docker info > ~/dockerinfo

echo "installed Docker"

sudo apt install docker-compose
echo "installed Docker compose"


echo "username=nasaccess" > ~/.smbcredentials
echo "password=PASSWORD_PLACEHOLDER" >> ~/.smbcredentials
echo "domain=AD" >> ~/. smbcredentials

