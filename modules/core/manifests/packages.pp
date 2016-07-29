

class core::packages {

  $packages = [
    'augeas',
    'git',
    'irssi',
    'lynx',
    'nmap',
    'screen',
    'tmux',
    'vim',
    #'wireshark', # TODO this will pull in X dependencies on headless machines
  ]

  $unix_packages = [
  ]

  if $kernel != 'Darwin' {
    package { $unix_packages:
      ensure => latest,
    }
  }

  package { $packages:
    ensure => latest,
  }

}