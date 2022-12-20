# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrant box available: https://app.vagrantup.com/bento/boxes/ubuntu-20.04

#BASE_IMAGE = "bento/ubuntu-20.04"
BASE_IMAGE = "bento/ubuntu-22.04"

VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
# Create A
  config.vm.define "A" do |subconfig|
    subconfig.vm.box = BASE_IMAGE
    subconfig.vm.hostname = "A"
    subconfig.vm.network :private_network, ip: "192.168.33.10"
    subconfig.vm.provision :shell, path: "a-bootstrap.sh"
  end

# Create B1
  config.vm.define "B1" do |subconfig|
    subconfig.vm.box = BASE_IMAGE
    subconfig.vm.hostname = "B1"
    subconfig.vm.network :private_network, ip: "192.168.33.11"
    subconfig.vm.provision :shell, path: "b1-bootstrap.sh"
  end

# Create B2
  config.vm.define "B2" do |subconfig|
    subconfig.vm.box = BASE_IMAGE
    subconfig.vm.hostname = "B2"
    subconfig.vm.network :private_network, ip: "192.168.33.12"
    subconfig.vm.provision :shell, path: "b2-bootstrap.sh"
  end
      
  config.ssh.forward_agent = true
  config.vm.boot_timeout = 300
end
