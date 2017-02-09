# modules/apache/manifests/service.pp
class apache::service {
	 service { 'apache2':
     ensure => running,
     enable => true
  }
}