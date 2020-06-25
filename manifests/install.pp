class whats::install (
  $version        = $::whats::version,
  $provider       = $::whats::provider,
  $manage_package = $::whats::manage_package,
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

    if $manage_package {
      package {'puppet-whats':
        ensure   => $version,
        provider => $provider,
        require  => [Package['gcc'],Package['ruby-devel']],
      }
    }
  }
