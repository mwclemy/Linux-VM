node default {
	include updating_packages
    class { 'apache':
      document_root => '/vagrant/test'
    }
    include mysql
    include php
}