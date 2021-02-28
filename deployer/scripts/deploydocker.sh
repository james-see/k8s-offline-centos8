#!/bin/bash
# adapted from https://www.centlinux.com/2019/02/install-docker-ce-on-offline-centos-7-machine.html
echo "Assuming your docker.tar.gz file is in the user's home directory."
echo "Expanding the tarball into the docker folder..."
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