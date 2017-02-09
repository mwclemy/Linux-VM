# modules/apache/manifests/install.pp
class apache::install(
  $package_name = $apache::params::package_name
) inherits apache::params {
  package { $package_name:
    ensure => present,
    require  => Exec['apt-get update'],
  }
}