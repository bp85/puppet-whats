class whats::install (
  $version  = $::whats::version,
  $provider = $::whats::provider,
  ) {

    if ! defined(Package['gcc']) {
      package {'gcc':
        ensure => installed,
      }
    }
    if ! defined(Package['ruby-devel']) {
      package {'ruby-devel':
        ensure => installed,
      }
    }

    package {'puppet-whats':
      ensure   => $version,
      provider => $provider,
      require  => [Package['gcc'],Package['ruby-devel']],
    }
  }
