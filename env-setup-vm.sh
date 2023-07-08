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
echo 'installing redis...'
wget http://download/redis.io/release/redis-6.2.4.tar.gz
tar xzf redis-6.2.4.tar.gz
cd redis-6.2.4
make
redis-cli ping
src/redis-server
echo 'install redis successfully'

