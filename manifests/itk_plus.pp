class mod_perl::itk_plus inherits mod_perl {
  case $::operatingsystem {
    centos: { include mod_perl::itk_plus::centos }
  }
}
