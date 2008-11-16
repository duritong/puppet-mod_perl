#
# mod_perl module
#
# modules/apache/manifests/modules/mod_perl.pp
# 2008 - admin(at)immerda.ch
# License: GPLv3
# adapted by Puzzle ITC
# Marcel Härry haerry+puppet(at)puzzle.ch
# Simon Josi josi+puppet(at)puzzle.ch
#

class mod_perl {
    case $operatingsystem {
        gentoo: { include mod_perl::gentoo }
        default: { include mod_perl::base }
    }
}

class mod_perl::base {
    include apache
    package{mod_perl:
        ensure => installed,
        require => Package['apache'],
        notify => Service['apache'],
    }
}

class mod_perl::gentoo inherits mod_perl::base {
    Package[mod_perl]{
        category => 'www-apache',
    }
}
