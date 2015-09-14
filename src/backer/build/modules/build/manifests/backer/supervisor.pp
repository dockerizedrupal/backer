class build::backer::supervisor {
  file { '/etc/supervisor/conf.d/backer_stdout.conf':
    ensure => present,
    source => 'puppet:///modules/build/etc/supervisor/conf.d/backer_stdout.conf',
    mode => 644
  }
}
