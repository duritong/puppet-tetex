class tetex::dvips {
  require ::tetex
  package{'texlive-dvips':
    ensure => installed,
  }
  if $::operatingsystemmajrelease < 6 {
    Package['texlive-dvips']{
      name => 'tetex-dvips',
    }
  }
}
