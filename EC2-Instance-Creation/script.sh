#!bin/bash
sudo su
yum update -y
yum install nginx -y
service nginx start