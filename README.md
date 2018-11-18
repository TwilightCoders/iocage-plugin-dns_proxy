# iocage-plugin-dns_proxy

## Install

iocage fetch -P dns_proxy.json ip4_addr="re0|192.168.0.100/24" -n dns_proxy vnet=off

## Configure

mount the following points in the jail
/path/to/data/dns_proxy/letsencrypt
/path/to/iocage/jails/dnsproxy/root/usr/local/etc/letsencrypt

/path/to/data/dns_proxy/conf
/path/to/iocage/jails/dnsproxy/root/usr/local/etc/nginx/conf.d

sudo certbot -a dns-plugin -i nginx -d "*.example.com" -d example.com --server https://acme-v02.api.letsencrypt.org/directory

certbot certonly --server https://acme-v02.api.letsencrypt.org/directory --webroot -w /var/www/letsencrypt -d *.example.com

### Example .conf
