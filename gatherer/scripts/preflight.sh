#!/bin/bash
bldred='\033[1;31m'
txtrst='\033[0m'

printf "${bldred} [%%] ${txtrst} Checking for epel-release...\n"
sudo yum install -y epel-release.noarch yum-utils
printf "${bldred} [%%] ${txtrst} Ready for Docker install...\n"
