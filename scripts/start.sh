#!/bin/bash
set -e

echo "=== [INFO] ApplicationStart Hook Started ===" | tee -a /tmp/deploy.log

# Stop Apache if running
sudo systemctl stop httpd || echo "httpd not running" | tee -a /tmp/deploy.log

# Ensure target directory exists
sudo mkdir -p /var/www/html

# Copy files
sudo cp -r /home/ec2-user/demo-app/* /var/www/html/demo-app1 | tee -a /tmp/deploy.log

# Set permissions
sudo chmod -R 755 /var/www/html/demo-app1
sudo chown -R apache:apache /var/www/html/demo-app1 || sudo chown -R ec2-user:ec2-user /var/www/html/demo-app1

# Start Apache
sudo systemctl start httpd
sudo systemctl enable httpd

echo "=== [INFO] ApplicationStart Hook Completed ===" | tee -a /tmp/deploy.log
