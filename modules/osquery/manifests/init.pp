
# https://osquery.io/

class osquery {

  # TODO need to install one or the other package depending on system to get the repos needed
  # $ sudo rpm -ivh https://osquery-packages.s3.amazonaws.com/centos6/noarch/osquery-s3-centos6-repo-1-0.0.noarch.rpm
  # vs.
  # $ sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 1484120AC4E9F8A1A577AEEE97A80C63C9D8B80B
  # $ sudo add-apt-repository "deb [arch=amd64] https://osquery-packages.s3.amazonaws.com/trusty trusty main"

  package { 'osquery':
    ensure => latest,
  }

  include osquery::client
  include osquery::server

}