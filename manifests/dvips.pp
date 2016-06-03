class tetex::dvips {
  require ::tetex
  package{'texlive-dvips':
    ensure => installed,
  }
  if versioncmp($::operatingsystemmajrelease,'6') < 0 {
    Package['texlive-dvips']{
      name => 'tetex-dvips',
    }
  }
}
