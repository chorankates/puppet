

class syslog::shared {

  package { 'rsyslog':
    ensure => latest,
  }

  service { 'rsyslog':
    ensure => 'running',
    require => Package['rsyslog']
  }

}