Vagrant.configure(2) do |config|
  config.vm.provider :virtualbox do |v|
    v.check_guest_additions = false
    v.customize ["modifyvm", :id, "--cpus", 1, "--memory", 512]
  end

  config.vm.provision :ansible do |ansible|
    ansible.playbook = "test/integration/vagrant/playbook.yml"
    ansible.verbose = ""
  end

  config.vm.define "cent7" do |cent7|
    cent7.vm.box = "https://github.com/CommanderK5/packer-centos-template/releases/download/0.7.1/vagrant-centos-7.1.box"
    cent7.vm.hostname = "vagrant-cent7"
  end

  config.vm.define "cent6" do |cent6|
    cent6.vm.box = "https://github.com/CommanderK5/packer-centos-template/releases/download/0.6.7/vagrant-centos-6.7.box"
    cent6.vm.hostname = "vagrant-cent6"
  end

end
