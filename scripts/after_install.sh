#!/bin/bash

# Clear old web files
sudo rm -rf /var/www/html/*

# Copy new React build files from deployment directory
sudo cp -r /var/www/react-app/* /var/www/html/

# Set proper permissions
sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html

echo "React build files copied to /var/www/html"
