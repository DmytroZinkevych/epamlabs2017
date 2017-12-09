# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.box_check_update = false
  config.vm.provision "shell", path: "https://raw.githubusercontent.com/DmytroZinkevych/epamlabs2017/master/docker_setup.sh"

  config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
      # Customize the amount of memory on the VM:
    vb.memory = "3072"
  end
  config.vm.provision "shell", path: "https://raw.githubusercontent.com/DmytroZinkevych/epamlabs2017/master/container_up.sh"
end
