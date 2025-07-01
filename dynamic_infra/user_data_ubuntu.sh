#!/bin/bash
apt update -y
apt install -y nginx
mkdir -p /var/www/html
echo "Hello from Ubuntu" > /var/www/html/index.html
systemctl start nginx
systemctl enable nginx
