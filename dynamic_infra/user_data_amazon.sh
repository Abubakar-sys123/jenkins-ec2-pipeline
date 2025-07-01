#!/bin/bash
yum update -y
yum install -y httpd
mkdir -p /var/www/html
echo "Hello from Amazon Linux" > /var/www/html/index.html
systemctl start httpd
systemctl enable httpd
