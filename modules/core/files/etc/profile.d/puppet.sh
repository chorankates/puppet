#!/bin/bash
# puppet related aliases/functions

alias prb='puppet apply --verbose --modulepath ~conor/git/puppet/modules/ ~conor/git/puppet/manifests/site.pp'
alias prv='puppet apply --verbose --modulepath /vagrant/modules/ /vagrant/manifests/site.pp'