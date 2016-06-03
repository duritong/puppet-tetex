class tetex {
  package{'texlive':
    ensure => installed,
  }
  if versioncmp($::operatingsystemmajrelease,'6') < 0 {
    Package['texlive']{
      name => 'tetex',
    }
  }
}
