#

class syslog::client {

  # TODO pull the endpoint to send to from heira
  notify { 'SYSLOG CLIENT NOT IMPLEMENTED': }

  package { 'rsyslog':
    ensure => 'latest',
  }

}