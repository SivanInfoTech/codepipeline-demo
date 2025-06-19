#!/bin/bash
set -e

echo "PostScript ran at $(date)" > /tmp/postscript.log

# Copy updated HTML file
sudo cp /home/ec2-user/demo-app/index.html /var/www/html/index.html

# Restart Apache to reflect changes
sudo systemctl restart httpd
