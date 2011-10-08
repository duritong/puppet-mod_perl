class mod_perl::disable::base inherits mod_perl::base {
  Package[mod_perl]{
    ensure => absent,
  }
}