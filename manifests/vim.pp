class habitullence::vim($home) {
  class { "habitullence::powerline":
    home => $home,
  }

  include macvim

  file { "/Applications/MacVim.app":
    ensure => link,
    require => Package["macvim"],
    target => "/opt/boxen/homebrew/Cellar/macvim/7.3-66/MacVim.app",
  }

  package { 'vim': }

  file { "${home}/.vim":
    ensure => directory,
    recurse => true,
    source => "puppet:///modules/habitullence/vim/.vim",
  }

  file { "${home}/.vimrc":
    require => [
      File["${home}/.vim"],
      Repository["${home}/.vim/bundle/vundle"],
    ],
    source => "puppet:///modules/habitullence/vim/.vimrc",
  }

  repository { "${home}/.vim/bundle/vundle":
    source => 'gmarik/vundle',
  }

  exec { 'Install Vundle bundles':
    command => 'vim +BundleInstall +qall',
    require => [
      Repository["${home}/.vim/bundle/vundle"],
      File["${home}/.vimrc"]
    ],
  }
}
