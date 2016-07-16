

class core::packages {

  $packages = [
    'git',
    'irssi',
    'lynx',
    'nmap',
    'screen',
    'tmux', # TODO need to figure out how to link this up with dotfiles
    'vim', # TODO should this be managed externally?
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