# iocage-plugin-dns_proxy

## Install

iocage fetch -P dns_proxy.json ip4_addr="re0|192.168.0.100/24" -n dns_proxy vnet=off

## Configure

mount the following points in the jail
sudo iocage fstab -a dns_proxy /path/to/data/dns_proxy/letsencrypt /usr/local/etc/letsencrypt nullfs ro 0 0

sudo iocage fstab -a dns_proxy /path/to/data/dns_proxy/conf /usr/local/etc/nginx/conf.d nullfs ro 0 0

sudo certbot -a dns-plugin -i nginx -d "*.example.com" -d example.com --server https://acme-v02.api.letsencrypt.org/directory

certbot certonly --server https://acme-v02.api.letsencrypt.org/directory --webroot -w /var/www/letsencrypt -d *.example.com

## Development / Contribution
Fetch/install the jail using `--keep_jail_on_failure` flag.

