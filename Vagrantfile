# Commands required to setup working docker enviro, link
# containers etc.
#$setup = <<SCRIPT
## Stop and remove any existing containers
#docker stop $(docker ps -a -q)
#docker rm $(docker ps -a -q)
#
## Build containers from Dockerfiles
##docker build -t k1m0z/af_appserver /app/docker/appserver/
#
## Run and link the containers
#docker run -d -p 50000:80 -v /app:/app k1m0z/af_appserver
#
#SCRIPT

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure("2") do |config|

  # Setup resource requirements
  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
    v.cpus = 2
  end

  # need a private network for NFS shares to work
  config.vm.network "private_network", ip: "192.168.50.4"

  # Rails Server Port Forwarding
  config.vm.network "forwarded_port", guest: 50000, host: 50000

  # Ubuntu
  config.vm.box = "hashicorp/precise64"

  # Install latest docker
  config.vm.provision "docker"

  # Must use NFS for this otherwise rails
  # performance will be awful
  # Sharing the current project root folder to /app at the VM
  config.vm.synced_folder ".", "/app", type: "nfs"

  # Setup the containers when the VM is first
  # created
  # config.vm.provision "shell", inline: $setup
end
