class mod_perl::disable::centos inherits mod_perl::centos {
  include mod_perl::disable::base
  Apache::Config::Global['perl.conf']{
    ensure => absent,
  }
}