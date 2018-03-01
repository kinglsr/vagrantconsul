# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  # Begin server1
  config.vm.define "server1" do |server1|
    server1.vm.hostname = "server1"
    server1.vm.box = "ubuntu/trusty64"
    config.vm.synced_folder "C:/Users/KnoMaD/capvagrant/", "/var/lib/redis"  
    server1.vm.provider "virtualbox" do |v|
        v.customize [ "modifyvm", :id, "--cpus", "1" ]
        v.customize [ "modifyvm", :id, "--memory", "1024" ]
    end
    server1.vm.network "private_network", ip: "192.168.2.2"
    server1.vm.provision "shell", path: "scripts/server1.sh" 
  end
  # End server1
  # Begin server2
  config.vm.define "server2" do |server2|
    server2.vm.hostname = "server2"
    server2.vm.box = "ubuntu/trusty64"
    config.vm.synced_folder "C:/Users/KnoMaD/capvagrant/", "/var/lib/redis" 
    server2.vm.provider "virtualbox" do |v|
        v.customize [ "modifyvm", :id, "--cpus", "1" ]
        v.customize [ "modifyvm", :id, "--memory", "1024" ]
    end
    server2.vm.network "private_network", ip: "192.168.2.3"
    server2.vm.provision "shell", path: "scripts/server2.sh"  
  end

  # Begin server3
  config.vm.define "server3" do |server3|
    server3.vm.hostname = "server3"
    server3.vm.box = "ubuntu/trusty64"
    config.vm.synced_folder "C:/Users/KnoMaD/capvagrant/", "/var/lib/redis"  
    server3.vm.provider "virtualbox" do |v|
        v.customize [ "modifyvm", :id, "--cpus", "1" ]
        v.customize [ "modifyvm", :id, "--memory", "1024" ]
    end
    server3.vm.network "private_network", ip: "192.168.2.4"
    server3.vm.provision "shell", path: "scripts/server3.sh"   
  end 
end