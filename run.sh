#!/bin/sh
# Share ssh key
#ansible-playbook sshkey.yml --ask-pass
# Fix yum mirrorlist for Centos8
ansible-playbook yum.yml

# Lesson1
# Install httpd with firewalld config
ansible-playbook 1.1_httpd_install.yml
# Remove httpd
ansible-playbook 1.2_httpd_remove.yml
# Change grub config
ansible-playbook 1.3_grub.yml

# Lesson2
# Add users with vars and vaults
#  echo -n 'Passw1230rDAlice' | ansible-vault encrypt_string --vault-password-file mypass.txt --stdin-name 'Alice_password'
ansible-playbook 2.1_add_users.yml --vault-password-file mypass.txt

# Lesson3
#ansible-galaxy init apache-role
ansible-playbook 3.1_httpd_install_role.yml
ansible-playbook 3.2_vsftpd_install_role.yml
