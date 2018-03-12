class awstest {
  exec { 'update':
    command => '/usr/bin/yum update -y'
  }

  package { 'htop':
    require => Exec['update'],
    ensure => installed,
  }
}
