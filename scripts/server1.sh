# !/usr/bin/bash
echo "Update package"
sudo apt-get update
#sudo apt-get upgrade

echo "Installation of Redis-server"
sudo apt-get install -y redis-server
echo "adjusting the Memory"
sudo su -
#sudo echo "maxmemory 128mb\n maxmemory-policy allkeys-lru\n" >> /etc/redis/redis.conf
echo "Restart the redis-server"
sudo service redis-server restart

# Dependencies
sudo apt-get install -y unzip
echo "Downloading Consul, please wait..."
sudo wget https://releases.hashicorp.com/consul/1.0.3/consul_1.0.3_linux_amd64.zip -O /var/lib/redis/consul_1.0.3_linux_amd64.zip
echo "Download complete, finishing install"
cd /var/lib/redis
sudo unzip consul_1.0.3_linux_amd64.zip
cp /var/lib/redis/consul /usr/local/bin/consul
cd /usr/local/bin/
sudo chmod +x consul
echo "Installation complete"
sudo mkdir /etc/consul.d
echo '{"service": {"name": "redis-server", "tags": ["redis"], "address":"127.0.0.1" , "port": 6379}}' | sudo tee /etc/consul.d/web.json
sudo consul agent -server -bootstrap-expect=1 -data-dir=/tmp/consul -node=agent-one -bind=192.168.2.2 -enable-script-checks=true -config-dir=/etc/consul.d
echo "master server setup complete"