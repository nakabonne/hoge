#!/bin/bash
set -e
cd /var/www/html/webapp
git pull
sudo cp etc/nginx.conf /etc/nginx/nginx.conf
cd /var/www/html/webapp/go
GOPATH=/var/www/html/webapp/go make build
sudo /usr/sbin/nginx -t
sudo service nginx reload
sudo systemctl stop systemd.go.service
sudo systemctl start systemd.go.service
