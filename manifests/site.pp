# stage configuration (repos first)

stage { 'first':
  before => Stage["main"],
}

class { 'repos_package':
  stage => 'first',
}

## top level configuration / specification
class base {

  include core
  include nagios
  include nfs
  include osquery
  include puppet
  include repos_package
  include rvm
  include squid
  #include sshd
  include syslog
  include users
}

## node assignment
node 'util' {
  include base

  #include nfs
  include rvm
  include repos_git

  include nagios::server
  include nfs::server
  include syslog::server
}

# catch-all for everyone else
node default {
  include base
}
