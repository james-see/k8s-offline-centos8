#!/bin/bash
set +x
if [ "$(cat /etc/redhat-release | grep 'CentOS Linux release 8'  )" ]; then
    echo "safe"
else
    echo "not safe, not running on Centos 8"
    exit 1
fi
