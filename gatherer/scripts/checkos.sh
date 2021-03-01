#!/bin/bash
bldred='\033[1;31m'
txtrst='\033[0m'
GREEN='\033[0;32m'
set +x
printf "${bldred} [%%] ${txtrst} Checking for the right Operating System...\n"
if [ "$(cat /etc/redhat-release | grep 'CentOS Linux release 8'  )" ]; then
    printf "${GREEN} [%%] ${txtrst} Found! CentOS 8 verified, continuing to preflight..."
else
    printf "${bldred} [%%] ${txtrst} Not safe, not running on Centos 8, exiting and raising error."
    exit 1
fi
