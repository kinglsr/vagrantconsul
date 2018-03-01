
Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/precise64"  
  config.vm.synced_folder "C:/Users/KnoMaD/capvagrant/", "/var/lib/redis"  
  config.vm.provision "ansible" do |ansible|
           ansible.playbook = "playbook.yaml"
     end
end
