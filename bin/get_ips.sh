#!/bin/sh

EXTIP=`dig +short myip.opendns.com @resolver1.opendns.com`
INTIP=`ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d'/'`

echo "Internal: $INTIP"
echo "External: $EXTIP"
exit 0