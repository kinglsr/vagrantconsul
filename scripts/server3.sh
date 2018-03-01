# !/usr/bin/bash
echo "consul setup"
cp /var/lib/redis/consul /usr/local/bin/consul
cd /usr/local/bin/
sudo chmod +x consul
echo "Consul setup complete"
sudo mkdir /etc/consul.d
consul agent -data-dir /tmp/consul -node=consul-agent2 -bind=192.168.2.4
consul join 192.168.2.2
echo "consul node3 setup complete"