

class core::files {

  file { '/etc/profile.d/puppet.sh':
    ensure => 'present',
    source => 'puppet:///modules/core/etc/profile.d/puppet.sh',
  }

  file { '/etc/motd':
    ensure => 'present',
    source => 'puppet:///modules/core/etc/motd',
  }

}