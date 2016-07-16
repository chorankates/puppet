

class users {


  # TODO this should be pulled from heira
  user { 'conor':
    home  => '/home/conor',
    shell => '/bin/bash'
    # TODO sudo
    # TODO create home dir
    # TODO generate SSH keys
    # TODO pull in /etc/tmux.conf -- am really going to need all dotfiles, but auth is an issue here
  }

#  users::add { 'foo':
#    username => 'foo',
#    comment  => 'emergency user',
#    shell    => '/bin/bash',
#    #password_hash   => 'pwd_hash_as_you_can_see_in_/etc/shadow'
#  }
#
#  define users::add($username, $comment, $shell) {
#    user { $username:
#      ensure     => 'present',
#      home       => "/home/${username}",
#      comment    => $comment,
#      shell      => $shell,
#      managehome => true,
#      #password   => $password_hash,
#    }
#  }
}