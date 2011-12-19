# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.define :web do |web|
    web.vm.box = "base"
    web.vm.forward_port("web", 80, 9010)
    web.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = "cookbooks"
      chef.add_recipe "web"
    end
  end

  config.vm.define :build do |build|
    build.vm.box = "base"
    build.vm.forward_port("jenkins", 8080, 9020)
    build.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = "cookbooks"
      chef.add_recipe "build"
    end
  end
end
