

class puppet {

  file { '/etc/puppet/puppet.conf':
    ensure => file,
    mode   => '0644',
    source => 'puppet:///modules/puppet/etc/puppet/puppet.conf',
  }

}