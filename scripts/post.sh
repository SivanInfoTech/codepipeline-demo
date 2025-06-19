#!/bin/bash
set -e

echo "PostScript ran at $(date)" > /tmp/postscript.log

# Copy updated HTML file
sudo cp /home/ec2-user/demo-app/* /var/www/html/demo-app1/

# Restart Apache to reflect changes
sudo systemctl restart httpd
