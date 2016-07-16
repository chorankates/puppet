

class core::cron {

  if $virtual {
    $puppet_path = '/vagrant'
  } else {
    $puppet_path = '~conor/git/puppet'
  }

  # run puppet every 4 hours.. this is probably overkill, but
  cron { 'puppet':
    command => "puppet apply --verbose --modulepath $puppet_path/modules/ $puppet_path/manifests/site.pp",
    user    => 'root',
    hour    => '*/4',
    minute  => '0',
  }


}