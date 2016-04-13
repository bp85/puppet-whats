class whats::config (
  $config           = $::whats::config,
  $puppetdb_server  = $::whats::puppetdb_server,
  $puppetdb_port    = $::whats::puppetdb_port,
  $search_domains   = $::whats::search_domains,
  $basic_info       = $::whats::basic_info,
  ) {

    file {$config:
      content => template('whats/whats.yaml.erb'),
      owner   => root,
      group   => root,
      mode    => '0644',
    }
  }
