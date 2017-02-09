class apache::params {
  $document_root = '/var/www/html'
  # $hostname = 'test'
  case $::osfamily {
    'RedHat': {
      $package_name = 'httpd'
    }
    'Debian': {
      $package_name = 'apache2'
    }
    default: {
      err("Unsupported Operating System #{::osfamily}")
    }
  }
}