# subsonic

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with subsonic](#setup)
    * [Beginning with subsonic](#beginning-with-subsonic)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

Subsonic is an Open-source web-based media streamer and jukebox. It Supports 
MP3, OGG, AAC and other streamable audio and video formats.

## Module Description

This Puppet module will install and configure Subsonic.

## Setup

### Beginning with subsonic

`include '::subsonic'` is enough to get you up and running. If you wish to 
specify parameters to use, then:
```puppet
class { 'subsonic':
    max_memory => '256',
}
```

## Usage

Here is a complete example with all available parameters to configure Subsonic:
```puppet
class { 'subsonic':
    home         => '/var/subsonic',
    host         => '127.0.0.1',
    http_port    => '2020',
    https_port   => '0',
    context_path => '/',
    max_memory   => '150',
    pidfile      => '/var/run/subsonic',
    user         => 'root',
}
```

See `subsonic --help` for more informations about default parameters
**home** The directory where Subsonic will create files. Default: /var/subsonic
**host** The host name or IP address on which to bind Subsonic. Default: 0.0.0.0
**http_port** The port on which Subsonic will listen for incoming HTTP traffic. Default: 4040
**https_port** The port on which Subsonic will listen for incoming HTTPS traffic. Default: 0 (disabled)
**context_path** The last part of the Subsonic URL. Default: /
**max_memory** The memory limit (max Java heap size) in megabytes. Default: 150
**pidfile** Write PID to this file. Default: not created.
**user** The user to run Subsonic. Default: root

## Limitations

puppetm-subsonic module has been tested on RedHat, Debian and Ubuntu 
distribution. Adding support for other systems is a matter of defining the 
relevant parameters in params.pp. So this is really easy for someone with access
 to such a system.

Patches to support any of these (or other) missing features are welcome.

## Development

Contributions are welcome :)
