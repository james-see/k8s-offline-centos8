#!/bin/bash
# adapted from https://www.centlinux.com/2019/02/install-docker-ce-on-offline-centos-7-machine.html
echo "Installing Docker CE..."
sudo yum-config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo
sudo yum-config-manager --enable docker-ce-nightly
sudo yum makecache
mkdir -p docker
cd docker
echo "Getting all of the dependancies localized..."
sudo yumdownloader --resolve docker-ce
echo "Compressing the folder of docker stuff to a tarball and saves it to the user home directory as docker.tar.gz..."
tar cvzf "$HOME"/docker.tar.gz *
echo "Docker prep complete. SCP docker.tar.gz to the offline server or manually transfer it over."