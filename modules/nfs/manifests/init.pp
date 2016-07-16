#

class nfs {

  # TODO going to need to do OS specific ish here
  $packages = [
    'nfs-common',
    'nfs-kernel-server',
    'nfs-util',
  ]

  # TODO need to distinguish between client and server packages
  package { $packages:
    ensure => latest,
  }

}