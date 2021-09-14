# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Base box
  config.vm.box = "geerlingguy/ubuntu2004"

  # Network configuration
  config.vm.network :forwarded_port, guest: 9200, host: 9200
  config.vm.network :forwarded_port, guest: 5601, host: 5601 
  config.vm.network "private_network", type: "dhcp"

  # VM configuration
  config.vm.provider "virtualbox" do |v|
    v.memory = 8192
    v.cpus = 2
  end

  # Run install script
  config.vm.provision "shell", keep_color: true, path: "install_stack.sh"
end
