#!/bin/bash
echo 'updating sudo...'
sudo apt update
echo 'sudo updated'
echo 'installing python 3.7...'
sudo apt install python3.7
echo 'python 3.7 installed'
echo 'installing pip...'
sudo -H pip3 install --upgrade pip
echo 'pip upgraded'
echo 'setting up default python version to 3.7...'
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.7 1
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.7 2
sudo update-alternatives --config python3
echo 'update the default python3 completed'
echo "current python3 version is $(python3 --version)"
echo 'installing redis...'
wget http://download/redis.io/release/redis-6.2.4.tar.gz
tar xzf redis-6.2.4.tar.gz
cd redis-6.2.4
make
redis-cli ping
src/redis-server
echo 'install redis successfully'

