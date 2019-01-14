#!/bin/bash

echo -e "--------------------------------------------------------------------------"
echo -e "Installing docker"
echo -e "--------------------------------------------------------------------------"


REPO_DIR=$(pwd)
TMP_DIR=~
HOME_DIR=/home/admin

#####################################################################################
## RERESH SYSTEM WITH APT-GET LIBRARY UPDATE & UPGRADE
#####################################################################################
echo -e " Updating APT-GET libraries and installed packages..."
echo -e "--------------------------------------------------------------------------"
apt-get -y update 							# Update library

#####################################################################################
## Install docker (see https://docs.docker.com/engine/installation/linux/docker-ce/debian/#install-docker-ce-1)
#####################################################################################
apt-get install -y \
     apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common \
	 dirmngr
echo 'deb https://apt.dockerproject.org/repo debian-stretch main' >> /etc/apt/sources.list
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys F76221572C52609D
apt-get update
apt-get install docker-engine
usermod -aG docker admin
cd $HOME_DIR
sudo cp -f $REPO_DIR/run_docker_server.sh $HOME_DIR/run_docker_server.sh
sudo chmod 0755 $HOME_DIR/run_docker_server.sh
#--- add docker to run when boot
sudo crontab -l -u root | cat - $REPO_DIR/cron-reboot-entry-docker | sudo crontab -u root -

#####################################################################################
## Reboot the machine
#####################################################################################

echo -e "--------------------------------------------------------------------------"
echo -e " The RPDlite Server is going to reboot now!"
echo -e "--------------------------------------------------------------------------"
sleep 5
shutdown -r now
