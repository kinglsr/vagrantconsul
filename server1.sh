# !/usr/bin/bash

echo "Update package"
sudo apt-get update
sudo apt-get upgrade

echo "Installation of Redis-server"
sudo apt-get install redis-server
echo "adjusting the Memory"
echo "maxmemory 128mb \n maxmemory-policy allkeys-lru \n" >> /etc/redis/redis.conf

echo "Restart the redis-server"

sudo service redis-server restart



