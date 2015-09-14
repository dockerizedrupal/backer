class run::backer::crontab {
  file { '/etc/cron.d/backer':
    ensure => present,
    content => template('run/crontab.erb'),
    mode => 644
  }
}
