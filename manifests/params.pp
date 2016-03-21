class whats::params {
  String  $version          = 'latest'
  String  $provider         = 'gem'
  String  $config           = '/etc/whats.yaml'
  String  $puppetdb_server  = 'puppetdb'
  String  $puppetdb_port    = '8080'
  Array   $search_domains   = ['local']

  }
