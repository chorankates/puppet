

class sshd {

  # package

  package { 'openssh-server':
    ensure => latest,
  }

  # file/config
  file { '/etc/ssh/sshd_config-test':
    mode    => '0600',
    require => Package['openssh-server'],
  }

  # TODO modify the sshd port and restart

  # service
  service { 'sshd':
    ensure  => 'running',
    require => File['/etc/ssh/sshd_config-test'],
  }

}