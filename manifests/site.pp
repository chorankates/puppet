stage { 'first':
  before => 'main',
}

## top level configuration / specification
class base {

  class { 'repos_packages':
    stage => 'first',
  }

  include core
  include nagios
  include nfs
  include osquery
  include rvm
  include squid
  #include sshd
  include syslog
  include users
}

## node assignment
node 'util' {
  include base

  include repos_git

  include nagios::server
  include nfs::server
  include syslog::server
}

# catch-all for everyone else
node default {
  include base
}