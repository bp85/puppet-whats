class whats::config (
  $config_path      = $::whats::config_path,
  $puppetdb_server  = $::whats::puppetdb_server,
  $puppetdb_port    = $::whats:::puppetdb_port,
  $search_domains   = $::whats::search_domains,
  ) {

    file {$config_path:
      content => template('whats/whats.yaml.erb'),
      owner   => root,
      group   => root,
      mode    => '0644',
    }
  }
