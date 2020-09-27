Vagrant.configure("2") do |hello|
  hello.vm.box = "centos/7"
  hello.vm.network "forwarded_port", guest: 22, host: 2225
  hello.vm.network "forwarded_port", guest: 80, host: 8085

  hello.vm.provision "shell", path: "install.sh"

  hello.vm.provision "ansible_local" do |ansible|
    install = false
    ansible.become = true
    ansible.playbook = "docker_nginx/playbook.yml"
    ansible.galaxy_role_file = "requirements.yml"
    ansible.galaxy_roles_path = "/etc/ansible/roles"
    ansible.galaxy_command = "sudo ansible-galaxy install --role-file=%{role_file} --roles-path=%{roles_path} --force"
  end

end
