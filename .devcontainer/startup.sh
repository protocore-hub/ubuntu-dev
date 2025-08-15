#!/bin/bash

# Get public Codespace hostname/IP (example for common setups)
HOSTNAME=$(hostname -f)
PORT=22
USER="vscode"

# You could use 'whoami' or $USER if you use a different username

echo "SSH connection info:" > /workspaces/ubuntu-dev/SSH_INFO.txt
echo "Host: $HOSTNAME" >> /workspaces/ubuntu-dev/SSH_INFO.txt
echo "Port: $PORT" >> /workspaces/ubuntu-dev/SSH_INFO.txt
echo "Username: $USER" >> /workspaces/ubuntu-dev/SSH_INFO.txt
echo "Password: vscode" >> /workspaces/ubuntu-dev/SSH_INFO.txt

# Optional: Show authorized key, if you use SSH keys
# cat ~/.ssh/authorized_keys >> /workspaces/ubuntu-dev/SSH_INFO.txt
