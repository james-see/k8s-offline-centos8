#!/bin/bash
# adapted from https://www.centlinux.com/2019/02/install-docker-ce-on-offline-centos-7-machine.html
# make sure to run the gatherer script first (run make all from the gatherer directory) and then copy the docker.tar.gz to the target machine
echo "Checking for tarball before we continue to expand and install Docker..."
FILE=$HOME/docker.tar.gz
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    echo "$FILE does not exist. Put the tarball there and re-run."
    exit 1
fi
echo "Expanding the tarball into the ~/docker folder..."
mkdir -p ~/docker
tar xvf ~/docker.tar.gz -C ~/docker
cd ~/docker
echo "Installing the rpms required for Docker CE..."
sudo rpm -ivh --replacefiles --replacepkgs *.rpm
echo "Starting docker and enabling it as a service that runs when the machine is running..."
sudo systemctl enable docker.service
sudo systemctl start docker.service
sudo usermod -aG docker $USER
echo "Docker CE has been successfully installed. "
echo "Now you can do docker save jenkins/jenkins > ~/jenkins.tar on internet connected machine for example and then docker load < jenkins.tar on this machine."