class people::avvs {
  include atom
  
  # from the stable channel
  include chrome
  
  include spotify
  
  # deprecated // use dockertoolbox
  include docker

  # Keep Docker up-to-date
  docker::compose::version: "1.5.2"
  docker::engine::version: "1.9.1"
  docker::machine::version: "0.5.4"
  
  # The name of the local VM
  docker::machinename: "local"

  # Set the global default node (auto-installs it if it can)
  class { 'nodejs::global':
    version => '5'
  }
  
  # install a node version
  nodejs::version { '0.12': }
  nodejs::version { '4': }
  
  class { 'vagrant':
    completion => true,
  }
  
  include packer
}
