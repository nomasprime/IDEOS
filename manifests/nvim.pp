class habitullence::nvim($home) {
  homebrew::tap { 'neovim/neovim': }

  package {
    [
      'ctags-exuberant',
      'the_silver_searcher',
      'neovim/neovim/neovim'
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
    source => "puppet:///modules/habitullence/nvim/vim-powerline/fonts",
  }

  file { "${home}/.nvimrc":
    require => [
      File["${home}/.nvim"],
      Repository["${home}/.nvim/bundle/Vundle.vim"],
    ],
    source => "puppet:///modules/habitullence/nvim/.nvimrc",
  }

  repository { "${home}/.nvim/bundle/Vundle.vim":
    source => 'VundleVim/Vundle.vim',
  }

  # exec { 'Install Vundle bundles':
  #   command => 'vim --noplugin -u ~/.vim/vundle.vim -N "+set hidden" "+syntax on" +BundleClean! +BundleInstall +qall',
  #   require => [
  #     Repository["${home}/.vim/bundle/vundle"],
  #     File["${home}/.vimrc"]
  #   ],
  # }
}
