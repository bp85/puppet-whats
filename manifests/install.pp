class whats::install (
  $version  = $::whats::version,
  $provider = $::whats::provider,
  ) {
    $deps = ['gcc','ruby-devel']
    package {$deps:
      ensure => installed,
    } ->
    package {'puppet-whats':
      ensure   => $version,
      provider => $provider,
    }

  }
