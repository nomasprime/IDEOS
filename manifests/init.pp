class dotfiles ($home = "/Users/${::luser}") {
  file { "${home}/.vimrc":
    source => "puppet:///modules/dotfiles/.vimrc",
  }
}
