class habitullence($home = "/Users/${::luser}") {
  class { "habitullence::nvim": 
    home => $home,
  }
}
