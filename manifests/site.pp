

## top level configuration / specification
class base {
  include core
  include nagios
  include syslog
  include users

  # ugh, OSX support needs to be worked on
  if $kernel != 'Darwin' {
    include sshd
  }

}

## node assignment
node 'util' {
  include base

  include nagios::server

  include nfs
  include rvm

  include syslog::server
}

# catch-all for everyone else
node default {
  include base
}