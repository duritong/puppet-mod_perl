class mod_perl::centos inherits mod_perl::base {
  apache::conf::global{'perl.conf':
    source => "modules/mod_perl/apache/${operatingsystem}/perl.conf",
    require => Package['mod_perl'],
  }
}
