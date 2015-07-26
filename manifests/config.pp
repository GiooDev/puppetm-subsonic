# == Class: subsonic::config
#
# This subclass manages the Subsonic config file
#
# === Authors:
#
# Julien Georges
#
class subsonic::config {

    file { $subsonic::params::conf_file:
        owner   => 'root',
        group   => 'root',
        content => template('subsonic/subsonic.erb'),
        notify  => Service['subsonic'],
        require => Package['subsonic'],
    }

}
