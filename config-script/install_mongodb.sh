#!/bin/bash

apt install -y apt-transport-https libcurl3-gnutls ca-certificates
apt-get install -y apt-transport-https libcurl3-gnutls ca-certificates
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
sudo bash -c 'echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" > /etc/apt/sources.list.d/mongodb-org-4.2.list'
apt-get update
apt-get install -y mongodb-org
systemctl start mongod
systemctl enable mongod
