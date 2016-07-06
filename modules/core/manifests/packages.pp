

class core::packages {

  $packages = [
  ]

  $unix_packages = [
    'nmap',
    'screen',
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