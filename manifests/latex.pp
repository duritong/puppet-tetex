class tetex::latex {
  require ::tetex
  package{'texlive-latex':
    ensure => installed,
  }

  if versioncmp($::operatingsystemmajrelease,'6') < 0 {
    Package['texlive-latex']{
      name => 'tetex-latex',
    }
  }
}
