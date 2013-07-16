class habitullence($home = "/Users/${::luser}") {
  notify {"What":}
  notify {"${home}":}
  include habitullence::vim($home)
}
