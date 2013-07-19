class habitullence::vim($home) {
  include macvim 

  file { "/Applications/MacVim.app":
    ensure => link,
    require => Package["macvim"],
    target => "/opt/boxen/homebrew/Cellar/macvim/7.3-66/MacVim.app",
  }

  package { 'vim': }

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
