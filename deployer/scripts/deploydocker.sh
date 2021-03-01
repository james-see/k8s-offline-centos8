#!/bin/bash
bldred='\033[1;31m'
txtrst='\033[0m'
GREEN='\033[0;32m'
# make sure to run the gatherer script first (run make all from the gatherer directory) and then copy the docker.tar.gz to the target machine
printf "${bldred} [%%] ${txtrst} Checking for tarball before we continue to expand and install Docker...\n"
FILE=$HOME/docker.tar.gz
if [ -f "$FILE" ]; then
    printf "$FILE exists."
else 
    printf "$FILE does not exist. Put the tarball there and re-run.\n"
    exit 1
fi
printf "${bldred} [%%] ${txtrst} Expanding the tarball into the ~/docker folder...\n"
mkdir -p ~/docker
tar xvf ~/docker.tar.gz -C ~/docker
cd ~/docker
printf "${bldred} [%%] ${txtrst} Installing the rpms required for Docker CE...\n"
sudo rpm -ivh --replacefiles --replacepkgs *.rpm
printf "${bldred} [%%] ${txtrst} Starting docker and enabling it as a service that runs when the machine is running...\n"
sudo systemctl enable docker.service
sudo systemctl start docker.service
sudo usermod -aG docker $USER
printf "${GREEN} [%%] ${txtrst} Docker CE has been successfully installed.\n"
printf "${bldred} [%%] ${txtrst} Now you can do docker save jenkins/jenkins > ~/jenkins.tar on internet connected machine for example and then docker load < jenkins.tar on this machine.\n"