# == Class: subsonic::install
#
# This subclass manages the installation of Subsonic packages
#
# === Authors:
#
# Julien Georges
#
class subsonic::install {

    package { $subsonic::params::java_pkg:
        ensure => present,
    }
    
    package { 'subsonic':
        ensure  => present,
        require => Package[$subsonic::params::java_pkg],
    }

}
