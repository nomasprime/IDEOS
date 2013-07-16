class habitullence($home = "/Users/${::luser}") {
  notify {"What":}
  notify {"${home}":}
  class { 'habitullence::vim':
    home => "${home}",
  }
}
