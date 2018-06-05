# vim ft=ruby
groups = {
  "wikiservers" => ["wiki"],
}

extra_vars = {
  "ansible_user" => "vagrant",
  "ansible_password" => "vagrant",
  "host_key_checking" => "False"
}

host_vars = {
  "wiki" => { "ansible_connection" => "local" },
}

Vagrant.configure(2) do |config|
  config.vm.box = "centos/7"
  config.vm.provision "shell", inline: "sed -i 's/PasswordAuthentication.*/PasswordAuthentication yes/' /etc/ssh/sshd_config && systemctl restart sshd"
  config.vm.define "wiki" do |control|
    control.vm.network "private_network", ip: "192.168.33.20"
    control.vm.synced_folder ".", "/vagrant", type: "rsync", rsync_exclude: ["*.swp"]
    control.vm.provision "ansible_local" do |ansible|
      ansible.playbook = "playbook.yml"
      ansible.provisioning_path = "/vagrant"
      ansible.limit = "all"
      ansible.groups = groups
      ansible.host_vars = host_vars
      ansible.extra_vars = extra_vars
    end
  end
end

