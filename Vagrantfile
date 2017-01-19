Vagrant.configure(2) do |config|
  config.vm.provider :virtualbox do |v|
    v.check_guest_additions = false
    v.customize ["modifyvm", :id, "--cpus", 1, "--memory", 512]
  end

  config.vm.provision :ansible do |ansible|
    ansible.playbook = "test/test.yml"
    ansible.force_remote_user = true
    ansible.verbose = ""
  end

  config.vm.define "cent7" do |cent7|
    cent7.vm.box = "wittman/centos-7.3"
    cent7.vm.hostname = "vagrant-cent7"
  end

  config.vm.define "cent6" do |cent6|
    cent6.vm.box = "wittman/centos-6.5"
    cent6.vm.hostname = "vagrant-cent6"
  end

end
