#

class syslog::client {

  package { 'rsyslog':
    ensure => latest,
  }

  service { 'rsyslogd':
    ensure => 'running',
    require => Package['rsyslog']
  }


}