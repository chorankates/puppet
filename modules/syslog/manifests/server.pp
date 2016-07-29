# these aren't really dependent on each other (wrt puppet ordering), not bothering
# TODO need to read values out of hiera instead of hardcoding

class syslog::server {

  file { '/etc/rsyslog.conf':
    ensure => 'file',
    mode   => '0644',
    source => 'puppet:///modules/syslog/etc/rsyslog.conf',
  }

}