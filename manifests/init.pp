class tetex {
  package{'texlive':
    ensure => installed,
  }
  if $::operatingsystemmajrelease < 6 {
    Package['texlive']{
      name => 'tetex',
    }
  }
}
