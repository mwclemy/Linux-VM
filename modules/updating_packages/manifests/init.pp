class updating_packages {
    group { 'puppet': ensure => 'present' }

exec { 'apt-get update':
  command => '/usr/bin/apt-get update',
  timeout     => 1800
}
}