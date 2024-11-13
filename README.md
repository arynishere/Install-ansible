# Install Ansible

This repository provides a simple script (`ansible_install.sh`) to automate the installation of Ansible on your Linux machine. It supports both RedHat-based and Debian-based distributions and automatically installs Ansible using the appropriate package manager.

## Features
- OS detection (RedHat/Debian)
- Automated Ansible installation

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/arynishere/Install-ansible.git
   cd Install-ansible
Make the script executable:

bash
Copy code
chmod +x ansible_install.sh
Run the script:

bash
Copy code
./ansible_install.sh
The script will detect your OS and install Ansible accordingly.
