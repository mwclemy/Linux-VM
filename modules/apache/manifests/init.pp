class apache(
  $document_root = $apache::params::document_root
) inherits apache::params {
  class { 'apache::install': } ->
  class { 'apache::config':
    document_root => $document_root
  } ~>
  class { 'apache::service': }
}