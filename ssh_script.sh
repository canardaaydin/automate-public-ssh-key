#!/bin/bash

ssh-keygen -P "" 

echo "Remote User : "
read user
echo "Remote servers ip: "
read ip


  

cat ~/.ssh/id_rsa.pub | ssh $user@$ip "mkdir -p ~/.ssh && chmod 700 ~/.ssh && cat >>  ~/.ssh/authorized_keys"
