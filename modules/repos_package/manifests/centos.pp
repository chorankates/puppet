

class repos_package::centos {

  yumrepo { 'epel':
    enabled => true,
    name    => 'Extra Packages for Enterprise Linux 6 - $basearch',
    baseurl => 'http://download.fedoraproject.org/pub/epel/6/$basearch',
  }

}