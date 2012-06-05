class mod_perl::disable inherits mod_perl {
  case $::operatingsystem {
    centos: { include mod_perl::disable::centos }
    default: { include mod_perl::disable::base }
  }
}
