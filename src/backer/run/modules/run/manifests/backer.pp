class run::backer {
  include run::backer::crontab

  file { '/root/Backup/models/backer.rb':
    ensure => present,
    content => template('run/backer.rb.erb'),
    mode => 644
  }
}
