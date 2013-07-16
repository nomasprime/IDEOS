class vim {
  file { "${home}/.vimrc":
    require => [
      File["${home}/.vim"], 
      Repository["${home}/.vim/bundle/vundle"]
    ],
    source => "puppet:///modules/habitullence/vim/.vimrc",
  }

  file { "${home}/.vim":
    source => "puppet:///modules/habitullence/vim/.vim",
  }

  repository { "${home}/.vim/bundle/vundle":
    require => File["${home}/.vim"],
    source => 'gmarik/vundle',
  }

  exec { 'Install Vundle bundles':
    command => 'vim +BundleInstall +qall',
    require => Repository["${home}/.vim/bundle/vundle"],
  }
}
