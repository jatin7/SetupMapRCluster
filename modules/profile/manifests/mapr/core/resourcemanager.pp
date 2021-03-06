# Class: profile::mapr::core::resourcemanager
#
# This module installs/configures MapR resourcemanager
#

class profile::mapr::core::resourcemanager (
) {

  require profile::mapr::prereq
  require profile::mapr::repo
  require profile::mapr::user

  package { 'mapr-resourcemanager':
    ensure  => present,
    notify  => Class['profile::mapr::configure'],
    before  => Class['profile::mapr::core::rm_nm_common'],
  }
}
