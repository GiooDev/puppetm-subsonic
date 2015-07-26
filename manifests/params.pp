# == Class: subsonic::params
#
# This subclass manages all the default parameters for Subsonic module
#
# === Authors:
#
# Julien Georges
#
class subsonic::params {

    case $::osfamily {
        'RedHat': {
            $java_pkg  = 'java-1.7.0-openjdk'
            $conf_file = '/etc/sysconfig/subsonic'
        }
        'Debian': {
            $java_pkg  = 'openjdk-7-jre'
            $conf_file = '/etc/default/subsonic'
        }
        default: {
            fail("The ${module_name} module is not supported on an ${::osfamily} based system.")
        }
    }

}
