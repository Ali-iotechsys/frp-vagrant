# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrant box available: https://app.vagrantup.com/bento/boxes/ubuntu-20.04

#BASE_IMAGE = "bento/ubuntu-20.04"
BASE_IMAGE = "bento/ubuntu-22.04"

VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
# Create Server A
  config.vm.define "ServerA" do |subconfig|
    subconfig.vm.box = BASE_IMAGE
    subconfig.vm.hostname = "ServerA"
    subconfig.vm.network :private_network, ip: "192.168.33.11"
    subconfig.vm.provision :shell, path: "ServerA-bootstrap.sh"
  end

# Create Server B
  config.vm.define "ServerB" do |subconfig|
    subconfig.vm.box = BASE_IMAGE
    subconfig.vm.hostname = "ServerB"
    subconfig.vm.network :private_network, ip: "192.168.33.12"
    subconfig.vm.provision :shell, path: "ServerB-bootstrap.sh"
  end
    
  config.ssh.forward_agent = true
  config.vm.boot_timeout = 300
end
