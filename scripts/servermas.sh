#!/bin/bash
sudo cat > /etc/consul/config.json << EOL
{
  "datacenter": "vagrant-dc",
  "data_dir": "/var/cache/consul",
  "log_level": "INFO",
  "node_name": "consul-master-1",
  "config_dir": "/etc/consul/config.d",
  "bind_addr": "0.0.0.0",
  "advertise_addr": "192.168.2.2",
  "domain": "consul.",
  "recursor": "8.8.8.8",
  "encrypt": "p4T1eTQtKji/Df3VrMMLzg==",
  "server": true,
  "bootstrap": true
}
EOL
service consul stop
rm -rf /var/cache/consul/*
service consul start


{"service": {"name": "web", "tags": ["rails"], "port": 80}}