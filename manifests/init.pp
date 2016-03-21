
class whats (
  String  $version          = $::whats::params::version,
  String  $provider         = $::whats::params::provider,
  String  $config           = $::whats::params::config,
  String  $puppetdb_server  = $::whats::params::puppetdb_server,
  String  $puppetdb_port    = $::whats::params::puppetdb_port,
  Array   $search_domains   = $::whats::params::search_domains,
  ) inherits  whats::params {

    class {'::whats::install':} ->
    class {'::whats::config':}

}
