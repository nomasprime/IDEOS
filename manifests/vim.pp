class habitullence::vim($home) {
  file { "/Applications/MacVim.app":
    ensure => link,
    require => Package["macvim"],
    target => "/opt/boxen/homebrew/Cellar/macvim/HEAD/MacVim.app",
  }

  package {
    [
      'ctags-exuberant',
      'the_silver_searcher',
      'vim'
    ]:
  }

  package {
    'macvim':
      install_options => [
        '--with-cscope',
        '--with-lua',
        '--HEAD'
      ]
  }

  file { "${home}/.vim":
    ensure => directory,
    recurse => true,
    source => "puppet:///modules/habitullence/vim/.vim",
  }

  file { "${home}/Library/Fonts":
    ensure => directory,
    recurse => true,
    source => "puppet:///modules/habitullence/vim/vim-powerline/fonts",
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

  # exec { 'Install Vundle bundles':
  #   command => 'vim --noplugin -u ~/.vim/vundle.vim -N "+set hidden" "+syntax on" +BundleClean! +BundleInstall +qall',
  #   require => [
  #     Repository["${home}/.vim/bundle/vundle"],
  #     File["${home}/.vimrc"]
  #   ],
  # }
}
