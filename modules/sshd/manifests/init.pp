

class sshd {

  # package
  # TODO need to work on OSX support
  if $kernel != 'Darwin' {
    package { 'openssh-server':
      ensure => latest,
    }
  }

  # file perms
  file { '/etc/ssh/sshd_config':
    mode    => '0600',
    require => Package['openssh-server'],
    notify  => Service['sshd'],
  }

  $sshd_options = hiera('sshd')
  $sshd_port = $sshd_options['port']

  augeas { 'sshd_config':
    context => '/files/etc/ssh/sshd_config',
    changes => [
      'set LogLevel VERBOSE',
      'set PermitRootLogin without-password', # poorly phrased, really means only key based auth for root
      "set Port ${sshd_port}",
      "set PubkeyAceeptedKeyTypes ssh-dss ssh-rsa",
      "set AuthorizedKeysFile %h/.ssh/authorized_keys",
    ],
    notify => Service['sshd'],
  }

  # service
  service { 'sshd':
    enable  => true,
    ensure  => 'running',
    require => Augeas['sshd_config']
  }

}