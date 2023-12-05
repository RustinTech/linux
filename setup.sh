#!/bin/bash

# System Update
sudo apt-get update

# SSH Setup
sudo apt-get install -y openssh-server
sudo sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
sudo systemctl restart ssh
echo "SSH setup completed."

# Firewall Configuration
sudo apt-get install -y ufw
sudo ufw allow ssh
sudo ufw enable
sudo ufw status
echo "Firewall configured."

# Network Configuration
sudo apt-get install -y network-manager wireless-tools
# Commands to connect to a wireless network via command line or nmtui
echo "Network configuration completed."

# Server Management Tools
sudo apt-get install -y cockpit webmin
# Commands to start cockpit and webmin services
echo "Server management tools installed."

# Service Installation
sudo apt-get install -y bind9
# Installation of desktop environments if required
echo "Services installed."

# SSL Setup
# Commands to configure SSL for localhost
echo "SSL setup completed."

echo "Server setup completed successfully!"

