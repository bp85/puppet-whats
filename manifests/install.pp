class whats::install (
  $version  = $::whats::version,
  $provider = $::whats::provider,
  ) {

    package {'puppet-whats':
      ensure   => $version,
      provider => $provider,
    }

  }
