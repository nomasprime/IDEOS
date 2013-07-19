class habitullence($home = "/Users/${::luser}") {
  class { 'habitullence::iterm2':
    home => $home,
  }

  class { 'habitullence::vim':
    home => $home,
  }
}
