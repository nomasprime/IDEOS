class habitullence($home = "/Users/${::luser}") {
  include habitullence::vim($home)
notify { "Another test.": }
}
