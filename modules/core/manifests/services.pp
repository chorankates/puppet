

class core::services {


  $disable_services = [
    'puppet'
  ]

  service { $disable_services:
    ensure => 'stopped'
  }

}