class people::avvs {
  include atom

  # Set the global default node (auto-installs it if it can)
  class { 'nodejs::global':
    version => 'iojs'
  }
  
  # install a node version
  nodejs::version { '0.12': }
  nodejs::version { '4': }

  # install the linter package
  atom::package { 'linter': }

  # install the monokai theme
  atom::theme { 'monokai': }

}
