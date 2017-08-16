class runit( $ensure, $package) {
  package { $package:
    ensure => $ensure
  }

  if $ensure == present {
    $dirs = ['/etc/sv','/etc/service']

    file { $dirs:
        ensure => directory,
    }
  }
}
