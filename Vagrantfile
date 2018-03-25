# TODO: Hopelessly obsolete

VAGRANTFILE_API_VERSION = "2"

# if !Vagrant.has_plugin?("vagrant-proxyconf")
#   system('vagrant plugin install vagrant-proxyconf')
#   raise("vagrant-proxyconf installed. Run command again.");
# end

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # if Vagrant.has_plugin?("vagrant-proxyconf")
  #   config.proxy.http     = "http://192.168.0.2:3129/"
  #   config.proxy.https    = "http://192.168.0.2:3129/"
  #   config.proxy.no_proxy = "localhost,127.0.0.1,.example.com"
  # end

  #config.vm.box = "ubuntu/trusty64"
  config.vm.box = "box-cutter/ubuntu1404-desktop"
  # Changed this to 8090, double-check later
  config.vm.network "forwarded_port", guest: 80, host: 8090

  config.ssh.forward_agent = true

  # To ignore the ssl errors through proxy
  config.vm.box_download_insecure = true

  config.vm.provision :ansible do |ansible|
   ansible.playbook = "playbook.yml"
  end
end
