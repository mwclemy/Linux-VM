class mysql {
    package { 'mysql-server':
        ensure => present,
        require  => Exec['apt-get update'],

    }
}