

class users {


  # TODO this should be pulled from heira
  user { 'conor':
    home  => '/home/conor',
    shell => '/bin/bash'
    # TODO create home dir
  }

  # TODO this should be generic, able to enable per user and in the users::add method
  augeas { 'sudoers_conor':
    context => '/files/etc/sudoers',
    changes => [
      "set spec[user ='conor']/user conor",
      "set spec[user ='conor']/host ALL",
      "set spec[user ='conor']/command ALL",
      "set spec[user ='conor']/command/runas_user root",
      "set spec[user ='conor']/command/tag NOPASSWD",
    ],
    require => User['conor'],
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