# -*- mode: ruby -*-
# vi: set ft=ruby :

### Define environment variables to pass on to provisioner

# Define Vault Primary HA server details
CRAWLER_IP_PREFIX = ENV['CRAWLER_IP_PREFIX'] || "10.100.5.1"
CRAWLER_SERVER_IPS = ENV['CRAWLER_SERVER_IPS'] || '"10.100.5.11", "10.100.5.12"'


Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  #config.vm.box_version = "20190411.0.0"
  # set up the 1 node Crawler Primary HA servers

  (1..1).each do |i|
    config.vm.define "vault#{i}" do |v1|

      config.vm.provider "virtualbox" do |v1|
        v1.customize ["modifyvm", :id, "--memory", "4096", "--cpus", "4"]
      end

      v1.vm.hostname = "v#{i}"
      
      v1.vm.network "private_network", ip: CRAWLER_IP_PREFIX +"#{i}"


      v1.vm.provision "shell", path: "scripts/bootstrap.sh"
    end
  end

end

