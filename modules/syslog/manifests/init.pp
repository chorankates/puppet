#

class syslog {

  # TODO need to determine whether we are client/server or just client -- maybe leave that to hiera?

  include syslog::client

}