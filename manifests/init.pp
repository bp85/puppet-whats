
class whats (
  $version          = $::whats::params::version,
  $provider         = $::whats::params::provider,
  $config           = $::whatts::params::config,
  $puppetdb_server  = $::whats::params::puppetdb_server,
  $puppetdb_port    = $::whats::params::puppetdb_port,
  $search_domains   = $::whats::params::search_domains,
  ){

    class {'::whats::install':} ->
    class {'::whats::config':}

}
