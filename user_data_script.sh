#!/bin/bash
yum update -y
yum install nginx -y
systemctl start nginx
systemctl enable nginx
aws s3 cp s3://renad-clarusway-assets/index.html
/usr/share/nginx/html/index.html
