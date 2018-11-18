#!/bin/sh

# Enable the service
sysrc -f /etc/rc.conf nginx_enable="YES"

chsh -s /usr/local/bin/bash root

mkdir -p /var/www/letsencrypt
mkdir -p /usr/local/etc/nginx/conf.d/sites

# Start the service
service nginx start 2>/dev/null

