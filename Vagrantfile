Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.customize ['modifyvm', :id, '--memory', '4096']
    vb.customize ["modifyvm", :id, "--cpus", "4"]
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "ansible/playbook.yml"
    ansible.sudo = true
  end

  config.vm.provision "shell", inline: <<-SHELL
    sudo systemctl restart network.service
  SHELL
end
