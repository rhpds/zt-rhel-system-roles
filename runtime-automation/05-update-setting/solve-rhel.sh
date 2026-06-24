#!/bin/sh

sed -ie 's/value: 20/value: 10/' soe.yml

ansible-playbook soe.yml -i hosts.ini