#!/bin/bash

# Stop Apache before making changes
sudo systemctl stop httpd

# Clean old files (optional but recommended for static sites)
sudo rm -rf /var/www/html/*

# Copy all files from deployed folder
sudo cp -R /home/ec2-user/demo-app/* /var/www/html/demo-app1/

# Start Apache
sudo systemctl start httpd
sudo systemctl enable httpd
