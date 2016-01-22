class habitullence($home = "/Users/${::luser}") {
  include habitullence::iterm2

  class { "habitullence::nvim":
    home => $home,
  }

  class { "prezto": repo => "habitullence/prezto" }
}
