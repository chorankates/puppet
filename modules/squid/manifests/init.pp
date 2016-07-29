

class squid {

  notify { 'SQUID NOT CONFIGURED': }

  package { 'squid':
    ensure => latest,
  }

  service { 'squid':
    ensure  => 'running',
    enabled => 1,
  }

  # TODO configure, need to pull port from heira


}