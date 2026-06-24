#!/bin/sh

ansible-playbook soe.yml

cat > hosts.ini << EOF
localhost  ansible_connection=local
[clients]
client1
EOF

sed -i '/^- hosts: localhost/ s/$/, clients/' soe.yml

ansible-playbook soe.yml -i hosts.ini