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


sudo apt-get install samba samba-common-bin smbclient cifs-utils -y

echo "username=nasaccess" > ~/.smbcredentials
echo "password=PASSWORD_PLACEHOLDER" >> ~/.smbcredentials
echo "domain=AD" >> ~/. smbcredentials

mkdir /home/pi/nas

sudo echo "//192.168.1.50/nas /home/pi/nas cifs uid=1000,credentials=/home/pi/.smbcredentials 0 0" >> /etc/fstab

sudo mount -a

mkdir /home/pi/dockerdata

docker volume create portainer_data
docker run -d -p 9000:9000 --name portainer --restart always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer

