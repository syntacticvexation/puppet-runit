class runit( $ensure = present ) {
  package { runit:
    ensure => $ensure
  }

  if $ensure == present {
    $dirs = ['/etc/sv','/etc/service']

    file { $dirs:
        ensure => directory,
    }
  }
}
