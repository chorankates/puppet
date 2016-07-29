#

class syslog {

  class { 'syslog::shared': } -> class { 'syslog::client': }

}