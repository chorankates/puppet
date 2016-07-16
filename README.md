# puppet
puppet configuration for personal machines


* (OSX download)[https://docs.puppet.com/puppet/latest/reference/install_osx.html]
* (Linux download)[https://docs.puppet.com/puppet/latest/reference/install_linux.html#installing-puppet-agent:-linux]

```
puppet apply --noop --verbose --modulepath /vagrant/modules/ /vagrant/manifests/site.pp
```

or

```
puppet apply --noop --verbose --modulepath ~/git/puppet/modules/ ~/git/puppet/manifests/site.pp
```