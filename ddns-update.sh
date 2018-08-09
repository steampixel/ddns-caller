#!/bin/sh

# This script will call a ddns server. Use the following rule to install a cronjob:
# * * * * * /path/to/ddns-update.sh

echo getting ip info from ipinfo.io...
ip=$(curl ipinfo.io/ip)
echo Current ip: $ip
echo Updating ddns server...
curl https://ddns.myserver.tld/update?secret=secret_string&domain=subdomain&addr=$ip
echo done
