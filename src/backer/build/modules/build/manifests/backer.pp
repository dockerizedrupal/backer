class build::backer {
  require build::backer::packages
  require build::backer::supervisor

  bash_exec { 'gem install backup':
    timeout => 0
  }

  bash_exec { 'mkdir -p /root/Backup/models': }

  file { '/root/Backup/config.rb':
    ensure => present,
    source => 'puppet:///modules/build/root/Backup/config.rb',
    mode => 644,
    require => Bash_exec['mkdir -p /root/Backup/models']
  }
}
