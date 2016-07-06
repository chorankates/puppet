#

class nfs {

  package { 'nfs-utils':
    ensure => latest,
  }


  # TODO service configuration

}