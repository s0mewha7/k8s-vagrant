# -*- mode: ruby -*-
# vi: set ft=ruby :

ENV['VAGRANT_SERVER_URL'] = 'https://vagrant.elab.pro'
Vagrant.configure(2) do |config|

  # Change to add more workers
  NodeCount = 1
  Provider = "vbox_desktop" # change if needed
  
  # global requirementsёё
  config.vm.provision "shell", path: "requirements.sh", :args => NodeCount
  config.vm.box = "bento/ubuntu-24.04" 

  # Kubernetes Master
  config.vm.define "master" do |master|
    master.vm.hostname = "master"
    master.vm.network "private_network", ip: "192.168.56.100"
    master.vm.network "forwarded_port", guest: 80, host: 8080
    master.vm.provider Provider do |v|
      v.memory = 2048
      v.cpus = 2
      v.gui = true
    end
    master.vm.provision "shell", path: "master.sh"
    master.vm.box_download_insecure = true
  end

  (1..NodeCount).each do |i|
    config.vm.define "worker#{i}" do |worker|
      worker.vm.hostname = "worker#{i}"
      worker.vm.network "private_network", ip: "192.168.56.#{i+1}"
      worker.vm.provider Provider do |v|
        v.memory = 1024
        v.cpus = 1
        v.gui = true
      end
      worker.vm.provision "shell", path: "worker.sh"
      worker.vm.box_download_insecure = true
    end
  end
end