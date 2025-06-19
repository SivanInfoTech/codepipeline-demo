#!/bin/bash

# Stop Apache before making changes
sudo systemctl stop httpd

# Clean old files (optional but recommended for static sites)
sudo rm -rf /var/www/html/*

# Copy all files from deployed folder
sudo cp -r /home/ec2-user/demo-app/* /var/www/html/

# Start Apache
sudo systemctl start httpd
sudo systemctl enable httpd
