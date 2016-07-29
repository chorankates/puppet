#

class syslog::server {

  # TODO use augeas to modify
  notify { 'SYSLOG CLIENT NOT IMPLEMENTED': }

  # /etc/rsyslog.conf needs to have these:
  # provides UDP syslog reception
  #module(load="imudp")
  #input(type="imudp" port="514")

  # provides TCP syslog reception
  #module(load="imtcp")
  #input(type="imtcp" port="514")


}