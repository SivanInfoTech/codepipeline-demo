#!/bin/bash
sudo cp /home/ec2-user/demo-app/index.html /var/www/html/index.html
sudo systemctl start httpd
sudo systemctl enable httpd
