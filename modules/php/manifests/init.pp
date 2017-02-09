class php {
    package { 'php5':
        ensure => present,
        require  => Exec['apt-get update'],
    }
}