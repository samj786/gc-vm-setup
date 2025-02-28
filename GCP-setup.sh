#!/bin/bash

# Update package lists and upgrade packages
echo "Updating system packages..."
sudo apt update && sudo apt upgrade -y

# Install Apache web server
echo "Installing Apache web server..."
sudo apt install apache2 -y

# Enable and start Apache service
echo "Starting Apache..."
sudo systemctl enable apache2
sudo systemctl start apache2

# Install monitoring tools
echo "Installing monitoring tools (htop, curl, net-tools)..."
sudo apt install -y htop curl net-tools

# Create a simple HTML page
echo "Creating a basic web page..."
echo "<h1>Welcome to My GCP VM</h1>" | sudo tee /var/www/html/index.html

# Adjust firewall rules to allow HTTP (port 80)
echo "Allowing HTTP traffic..."
sudo ufw allow 80/tcp
sudo ufw reload

echo "Setup complete! Visit your VM's external IP in a browser."
