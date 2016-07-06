# very minimal for testing

images = {
  :centos6  => 'http://puppet-vagrant-boxes.puppetlabs.com/centos-64-x64-vbox4210.box',
  :centos66 => 'https://vagrantcloud.com/puppetlabs/boxes/centos-6.6-64-nocm/versions/1.0.3/providers/virtualbox.box',

  :ubuntu13 => 'http://puppet-vagrant-boxes.puppetlabs.com/ubuntu-1310-x64-virtualbox-puppet.box',
  :ubuntu16 => 'https://vagrantcloud.com/puppetlabs/boxes/ubuntu-16.04-64-puppet/versions/1.0.0/providers/virtualbox.box',
}


boxes = {
  :test1 => {
    :image => :centos6,
    :ip    => 10,
    :commands => [
      'sudo rpm -Uvh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-6.noarch.rpm',
      'sudo yum -y install puppet-agent',
    ],
  },

  :test2 => {
    :image => :centos66,
    :ip    => 11,
    :commands => [
      'sudo rpm -Uvh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-6.noarch.rpm',
      'sudo yum -y install puppet-agent',
    ]
  },

  :test3 => {
    :image => :ubuntu16,
    :ip    => 12,
    :commands => [
      'sudo wget https://apt.puppetlabs.com/puppetlabs-release-pc1-wheezy.deb',
      'sudo dpkg -i puppetlabs-release-pc1-wheezy.deb',
      'sudo apt-get install puppet-agent',
    ]
  }
}

Vagrant::Config.run do |config|
  boxes.each_pair do |name, hash|
    config.vm.define name do |worker|

      worker.vm.box            = name.to_s
      worker.vm.box_url        = images[hash[:image]]
      worker.vm.host_name      = name.to_s
      worker.vm.network        :hostonly, sprintf('10.0.1.%s', hash[:ip])
      worker.ssh.forward_agent = true

      # bootstrapping
      hash[:commands].each do |c|
        worker.vm.provision 'shell', inline: sprintf('echo running:[%s]', c)
        worker.vm.provision 'shell', inline: c
      end

      # initial puppet run
      worker.vm.provision 'shell', inline: sprintf('puppet apply --modulepath %s --detailed-exitcodes %s', '/vagrant/modules', '/vagrant/manifests/site.pp')

    end
  end
end
