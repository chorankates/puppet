#

class tmux {

  package { 'tmux':
    ensure => latest,
  }

  # TODO how do we want to install config per user? put it in /etc/skel?  -- no, create as part of users module

}