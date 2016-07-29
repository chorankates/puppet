
class repos_package {

  if $os['name'] == 'CentOS' {
    include repos_package::centos
  } elsif $os['name'] == 'Ubuntu' {
    include repos_package::ubuntu
  } else {
    notify { "REPOS PACKAGES UNDEFINED FOR THIS OS [$operatingsystem}]": }
  }

}