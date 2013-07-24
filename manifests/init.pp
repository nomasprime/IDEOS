class habitullence($home = "/Users/${::luser}") {
  class { "habitullence::vim": 
    home => $home,
  }
}
