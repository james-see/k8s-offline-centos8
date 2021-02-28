#!/bin/bash

if ( /etc/redhat-release file -z ); echo "safe"
else;
echo "not safe"
exit 1
fi
