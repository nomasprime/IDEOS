class habitullence($home = "/Users/${::luser}") {
  notify {"${home}":}
  class { 'habitullence::vim':
    home => "${home}",
  }
}
