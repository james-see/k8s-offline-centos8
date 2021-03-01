#!/bin/bash
# gracefully stop
sudo systemctl stop docker.service
# gracefully disable
sudo systemctl disable docker.service
# remove everything
sudo yum remove docker-ce docker-ce-cli containerd.io
# remove the lib folder and subfolders
sudo rm -rf /var/lib/docker
