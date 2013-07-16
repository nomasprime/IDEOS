class habitullence::vim($home) {
  file { "${home}/.vimrc":
    require => [
      File["${home}/.vim/backup"], 
      Repository["${home}/.vim/bundle/vundle"]
    ],
    source => "puppet:///modules/habitullence/vim/.vimrc",
  }

  file { ["${home}/.vim", "${home}/.vim/backup"]:
    ensure => 'directory',
  }

  repository { "${home}/.vim/bundle/vundle":
    require => File["${home}/.vim"],
    source => 'gmarik/vundle',
  }

  exec { 'Install Vundle bundles':
    command => 'vim +BundleInstall +qall',
    require => [Repository["${home}/.vim/bundle/vundle"],File["${home}/.vimrc"]],
  }
}
