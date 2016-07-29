

class users {


  # TODO this should be pulled from heira
  user { 'conor':
    home  => '/home/conor',
    shell => '/bin/bash'
    # TODO passwordless sudo
    # TODO create home dir
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
#    # TODO an exec to generate ssh keys
#  }
}