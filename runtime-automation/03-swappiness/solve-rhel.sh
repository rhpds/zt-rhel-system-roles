#!/bin/sh

ssh root@client1 cat /proc/sys/vm/swappiness

ssh -o "StrictHostKeyChecking no" rhel@localhost exit

ssh -o "StrictHostKeyChecking no" rhel@client1 exit