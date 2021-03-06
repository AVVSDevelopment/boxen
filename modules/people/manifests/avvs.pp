class people::avvs {
  include atom
  
  # from the stable channel
  include chrome
  
  include spotify
  
  # deprecated // use dockertoolbox
  # include docker

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
