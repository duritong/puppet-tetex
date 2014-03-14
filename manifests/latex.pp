class tetex::latex {
  require ::tetex
  package{'texlive-latex':
    ensure => installed,
  }

  if $::operatingsystemmajrelease < 6 {
    Package['texlive-latex']{
      name => 'tetex-latex',
    }
  }
}
