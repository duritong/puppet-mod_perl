class mod_perl::itk_plus::centos inherits mod_perl::centos {
  Apache::Conf::Gloabl['perl.conf']{
    source => "modules/mod_perl/itk_plus/${::operatingsystem}/perl.conf"
  }
}
