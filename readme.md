Server Setup Script
This script automates the setup of a Debian-based server, performing several tasks to configure and secure the system.

Instructions:
Run the Script:

bash
Copy code
chmod +x setup_server.sh
./setup_server.sh
Follow Instructions:
The script will prompt for necessary inputs during execution.

Command Breakdown:
System Update
bash
Copy code
sudo apt-get update
Purpose: Updates the package lists to get the latest version information of available packages.
Alternative: Use apt update.
SSH Setup
bash
Copy code
sudo apt-get install -y openssh-server
sudo sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
sudo systemctl restart ssh
Purpose: Installs OpenSSH server and allows root login via SSH.
Alternative: Instead of allowing root login, consider creating a non-root user and using SSH keys for authentication.
Firewall Configuration
bash
Copy code
sudo apt-get install -y ufw
sudo ufw allow ssh
sudo ufw enable
sudo ufw status
Purpose: Installs Uncomplicated Firewall (UFW) and allows SSH traffic while enabling the firewall.
Alternative: Use specific ports or protocols as needed and adjust UFW settings accordingly.
Network Configuration
bash
Copy code
sudo apt-get install -y network-manager wireless-tools
Purpose: Installs network management tools for configuring wireless networks.
Alternative: Use command line tools like nmcli or graphical tools like nmtui for network setup.
Server Management Tools
bash
Copy code
sudo apt-get install -y cockpit webmin
Purpose: Installs Cockpit and Webmin for server administration via web interfaces.
Alternative: Use tools like SSH and terminal-based commands for server management.
Service Installation
bash
Copy code
sudo apt-get install -y bind9
Purpose: Installs BIND9 DNS server.
Alternative: Consider other DNS servers like dnsmasq or PowerDNS based on specific requirements.
SSL Setup
bash
Copy code
# Commands to configure SSL for localhost
Purpose: Not explicitly defined in the provided script; typically used for securing web server connections.
Alternative: Use tools like Let's Encrypt for automated SSL certificate installation and renewal.
Additional Notes:
Ensure proper configurations and security measures are taken before allowing root SSH access.
Regularly update and maintain the system to address security vulnerabilities.
Always verify commands and configurations before executing them on production systems.
