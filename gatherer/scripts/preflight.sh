#!/bin/bash
RED='\033[1;31m'
txtrst='\033[0m'
GREEN='\033[0;32m'
printf "${RED} [%%] ${txtrst} Checking for epel-release...\n"
sudo yum install -y epel-release.noarch yum-utils
printf "${GREEN} [%%] ${txtrst} Ready for Docker install...\n"
