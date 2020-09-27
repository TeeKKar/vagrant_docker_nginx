## Vagrant + Docker + Nginx Deployment

Requires [Vagrant](https://www.vagrantup.com/docs/installation) on host machine

This Vagrant Box is using shell and ansible_local provisioner to run ansible playbook that will install & deploy Nginx Docker container. 

Instructions to start the vagrant box:

    vagrant up
To access Nginx from host:

    localhost:8085