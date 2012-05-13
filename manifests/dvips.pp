class tetex::dvips {
  require ::tetex
  package{'tetex-dvips':
    ensure => installed,
  }
}
