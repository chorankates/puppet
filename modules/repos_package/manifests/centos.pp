
class repos_package::centos {

#[epel]
#name=Extra Packages for Enterprise Linux 6 - $basearch
##baseurl=http://download.fedoraproject.org/pub/epel/6/$basearch
#mirrorlist=https://mirrors.fedoraproject.org/metalink?repo=epel-6&arch=$basearch
#failovermethod=priority

  yumrepo { 'epel':
    enabled => true,
    name    => 'Extra Packages for Enterprise Linux 6 - $basearch',
    baseurl => 'http://download.fedoraproject.org/pub/epel/6/$basearch',
  }

}