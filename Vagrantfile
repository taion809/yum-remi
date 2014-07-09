# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.require_version ">= 1.5.0"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  if Vagrant.has_plugin?("vagrant-vbguest")
        config.vbguest.auto_update = false
  end

  config.vm.hostname = "yum-remi-berkshelf"
  config.omnibus.chef_version = :latest
  config.vm.box = "centos65"
  config.vm.network :private_network, type: "dhcp"

  if Vagrant.has_plugin?("vagrant-berkshelf")
    config.berkshelf.enabled = true
    config.vm.provision :chef_solo do |chef|
      chef.run_list = [
          "recipe[yum-remi::default]"
      ]
    end
  end
end
