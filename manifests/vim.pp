class vim {
  file { "${home}/.vimrc":
    source => "puppet:///modules/habitullence/vim/.vimrc",
  }

  file { "${home}/.vim":
    source => "puppet:///modules/habitullence/vim/.vim",
  }
}
