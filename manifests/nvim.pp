class habitullence::nvim($home) {
  package {
    [
      'ctags-exuberant',
      'the_silver_searcher',
      'neovim'
    ]:
  }

  file { "${home}/.nvim":
    ensure => directory,
    recurse => true,
    source => "puppet:///modules/habitullence/nvim/.nvim",
  }

  file { "${home}/Library/Fonts":
    ensure => directory,
    recurse => true,
    source => "puppet:///modules/habitullence/vim/vim-powerline/fonts",
  }

  file { "${home}/.nvimrc":
    require => [
      File["${home}/.nvim"],
      Repository["${home}/.nvim/bundle/vundle"],
    ],
    source => "puppet:///modules/habitullence/nvim/.nvimrc",
  }

  repository { "${home}/.nvim/bundle/vundle":
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
