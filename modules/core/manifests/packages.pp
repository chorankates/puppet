

class core::packages {

  $packages = [
    'nmap',
    'screen',
    'vim', # TODO should this be managed externally?
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