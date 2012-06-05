class mod_perl::base {
  include apache
  package{mod_perl:
    ensure => installed,
    require => Package['apache'],
    notify => Service['apache'],
  }
}
