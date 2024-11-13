#!/bin/bash 

echo "Installing Ansible..."
sleep 3 

# Check OS type and install Ansible using the appropriate package manager
if [ -f /etc/redhat-release ]; then
    # For RedHat-based systems (CentOS, RHEL, Fedora, etc.)
    echo "Detected RedHat-based OS"
    sudo yum install -y epel-release
    sudo yum install -y ansible
elif [ -f /etc/lsb-release ]; then
    # For Debian-based systems (Ubuntu, Debian, etc.)
    echo "Detected Debian-based OS"
    sudo apt update
    sudo apt install -y ansible
else
    echo "Unsupported OS"
    exit 1
fi

# Prompt for project name
read -p "Enter your project name: " directoryname

# Create directories
mkdir -p ansible/provision/inventory
mkdir -p ansible/provision/roles/$directoryname
cd ansible/provision/roles/$directoryname && mkdir defaults files meta tasks vars

# Create task file
touch ansible/provision/roles/$directoryname/tasks/main.yml

# Create YAML file for the project
touch ansible/provision/$directoryname.yml
