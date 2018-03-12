class awstest {
  exec { 'update':
    command => '/usr/bin/yum update -y'
  }

  package { 'htop':
    require => Exec['update'],
    ensure => installed,
  }

  package { 'httpd':
    require => Exec['update'],
    ensure => installed,
  }

  service { 'httpd':
    ensure => running,
  }
}
