# == Class: postfix
#
# module to install and configure postfix servers/relays
# etc.
#
# === Parameters
#
# === Variables
#
# === Authors
#
# mjhas@github
class postfix(
    $service_ensure = 'running'
  ){
  package { 'postfix':
    ensure  => installed,
    before  => Exec['postfix'],
  }

  service { 'postfix':
    ensure  => $service_ensure,
    require => Exec['postfix']
  }
}
