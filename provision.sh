#!/bin/bash

# Update & Upgrade 
sudo apt-get update -y
sudo apt-get upgrade -y

# Install nginx
sudo apt-get install nginx -y

# Enable/Start nginx
sudo systemctl enable nginx -y

sudo mv reverse_proxy /etc/nginx/sites-available/default
# Checks
sudo nginx -t
# Restart nginx to confirm changes
sudo systemctl restart nginx -y

# Install node js specific version
sudo apt-get install python-software-properties
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install nodejs -y

# Install pm2
sudo npm install pm2 -g

