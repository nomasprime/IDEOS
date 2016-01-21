class habitullence($home = "/Users/${::luser}") {
  class { "habitullence::nvim": 
    home => $home,
  }

  include dropbox
  include habitullence::iterm2
  include onepassword
}
