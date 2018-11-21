
Vagrant.configure("2") do |config|
  config.vm.box = "vatman/xenial64-clean"
  config.vm.box_version = "0.1"
  config.vm.hostname = "bananas3"
  config.vm.provision "shell", path: "scripts/install.sh"
end
