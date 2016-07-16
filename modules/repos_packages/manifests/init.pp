
class repos_packages {

  if $os['name'] == 'CentOS' {
    include repos_packages::centos
  } elsif $os['name'] == 'Ubuntu' {
    include repos_packages::ubuntu
  } else {
    notify { "REPOS PACKAGES UNDEFINED FOR THIS OS [$operatingsystem}]": }
  }

}