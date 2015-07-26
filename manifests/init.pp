# == Class: subsonic
#
# Puppet module to install and configure Subsonic.
#
# === Parameters
#
# See `subsonic --help` for more informations about default parameters
#
# [*home*]
#   The directory where Subsonic will create files. Default: /var/subsonic
#
# [*host*]
#   The host name or IP address on which to bind Subsonic. 
#   Default: 0.0.0.0
#
# [*http_port*]
#   The port on which Subsonic will listen for incoming HTTP traffic. Default: 4040
#
# [*https_port*]
#   The port on which Subsonic will listen for incoming HTTPS traffic. Default: 0 (disabled)
#
# [*context_path*]
#   The last part of the Subsonic URL. Default: /
#
# [*max_memory*]
#   The memory limit (max Java heap size) in megabytes. Default: 150
#
# [*pidfile*]
#   Write PID to this file. Default: not created.
#
# [*user*]
#   The user to run Subsonic. Default: root
#
# === Examples
#
#  class { 'subsonic':
#    http_port  => '2020',
#    max_memory => '256',
#  }
#
# === Authors
#
# Julien Georges <GiooDev@users.noreply.github.com>
#
# === Copyright
#
# Copyright 2015 Julien Georges
#
class subsonic (
    $home         = 'undef',
    $host         = 'undef',
    $http_port    = 'undef',
    $https_port   = 'undef',
    $context_path = 'undef',
    $max_memory   = '150',
    $pidfile      = 'undef',

    $user         = 'root',
)  inherits subsonic::params {

    include subsonic::install
    include subsonic::config
    include subsonic::service
    
    Class['subsonic::install'] ->
    Class['subsonic::config'] ->
    Class['subsonic::service']

}
