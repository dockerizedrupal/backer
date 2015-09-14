class build::backer::packages {
  package {[
      'build-essential',
      'ruby-dev',
      'zlib1g-dev',
      'mysql-client'
    ]:
    ensure => present
  }
}
