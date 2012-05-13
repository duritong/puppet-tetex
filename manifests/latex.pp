class tetex::latex {
  require ::tetex
  package{'tetex-latex':
    ensure => installed,
  }
}
