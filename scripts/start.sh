#!/bin/bash
#set -e

#echo "==> Starting ApplicationStart hook" | sudo tee -a /tmp/deploy.log

# Stop Apache if running
sudo systemctl stop httpd || echo "httpd not running"

# Clear old files (optional)
sudo rm -rf /var/www/html/demo-app1/*

# Copy updated files
sudo cp -r /home/ec2-user/demo-app/* /var/www/html/demo-app1/

# Start Apache
sudo systemctl start httpd
sudo systemctl enable httpd
