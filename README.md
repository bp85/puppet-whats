# whats

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with whats](#setup)
    * [What whats affects](#what-whats-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with whats](#beginning-with-whats)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

Installs puppet-whats gem and templates a whats.yaml config file for you.

## Setup


### Beginning with whats

`puppet module install sjoeboo-whats`


## Usage

`include whats`
or

```
class {'whats':
    search_domains => ['my.domain','my.other.domain'],
}
```

## Parameters

`version` specify the version of **whats** to deploy Default: *latest*
`provider`  specify the provider to use to install whats Default: *gem*
`config_path` specify the config path to use to place the config Default: */etc/whats.yaml*
`puppetdb_server` specify the puppet db server to connect to. Default: *puppetdb*
`puppetdb_port` specify the port to connec to puppetdb on. Default: *8080*
`search_domains` specify the list of domains to search for nodes in Default(Array): ['local']
