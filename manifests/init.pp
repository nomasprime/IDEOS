class habitullence($home = "/Users/${::luser}") {
  include divvy
  include dropbox
  include habitullence::iterm2
  include onepassword

  class { "habitullence::nvim": 
    home => $home,
  }

  class { "prezto": repo => "habitullence/prezto" }
}
