# modules/apache/manifests/modules/mod_perl.pp
# 2008 - admin(at)immerda.ch
# License: GPLv3

class mod_perl {
    case $operatingsystem {
        gentoo: { include mod_perl::gentoo }
        default: { include mod_perl::base }
    }
}

class mod_perl::base {
    package{mod_perl:
        ensure => installed,
        notify => Service[apache],
    }
}

class mod_perl::gentoo inherits mod_perl::base {
    Package[mod_perl]{
        category => 'www-apache',
    }
}


