# == Class: subsonic::service
#
# This subclass manages the Subsonic service
#
# === Authors:
#
# Julien Georges
#
class subsonic::service {

    service { 'subsonic':
        ensure  => running,
        enable  => true,
        require => Package['subsonic'],
    }

}
