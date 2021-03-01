#!/bin/bash
bldred='\033[1;31m'
txtrst='\033[0m'

echo "[%] Checking for epel-release..."
sudo yum install -y epel-release.noarch yum-utils
echo "[%] Moving onto Docker install..."
