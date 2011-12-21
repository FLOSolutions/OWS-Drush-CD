# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.define :web do |web|
    web.vm.box = "base"
    web.vm.forward_port("web", 80, 9010)
    web.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = [ "cookbooks", "cookbooks-overrides" ]
      chef.roles_path = "roles"
      chef.add_role "web"
    end
  end

  config.vm.define :build do |build|
    build.vm.box = "base"
    build.vm.forward_port("jenkins", 8080, 9020)
    build.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = [ "cookbooks", "cookbooks-overrides" ]
      chef.roles_path = "roles"
      chef.add_role "build"
    end
  end
end
