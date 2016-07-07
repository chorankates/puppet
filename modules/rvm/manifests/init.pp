# https://forge.puppet.com/maestrodev/rvm
#
class rvm { }

class { 'rvm':
  gnupg_key_id => false, # TODO not this
}

rvm::system_user { conor: ; vagrant: ; }

rvm_system_ruby {
  'ruby-2.0':
    ensure      => 'present',
    default_use => true;
}

#rvm_gem {
#  'bundler':
#    name         => 'bundler',
#    ruby_version => 'ruby-1.9.3-p448',
#    ensure       => latest,
#    require      => Rvm_system_ruby['ruby-1.9.3-p448'];
#}


#
## install rubies from binaries
#Rvm_system_ruby {
#  ensure     => present,
#  build_opts => ['--binary'],
#}
#
## ensure rvm doesn't timeout finding binary rubies
## the umask line is the default content when installing rvm if file does not exist
#file { '/etc/rvmrc':
#  content => 'umask u=rwx,g=rwx,o=rx
#                     export rvm_max_time_flag=20',
#  mode    => '0664',
#  before  => Class['rvm'],
#}
#
#class { rvm: }
#rvm::system_user { 'vagrant': }
#rvm_system_ruby {
#  'ruby-1.9.3':
#    default_use => true;
#  'ruby-2.0.0':;
#  'jruby':;
#}