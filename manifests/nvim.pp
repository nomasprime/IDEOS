class habitullence::nvim($home) {
  homebrew::tap { 'neovim/neovim': }

  package {
    [
      'ctags-exuberant',
      'the_silver_searcher',
      'neovim/neovim/neovim'
    ]:
  }

  $nvim_config = "${home}/.config/nvim"

  file { $nvim_config:
    ensure => directory,
    recurse => true,
    source => "puppet:///modules/habitullence/nvim/config",
  }

  file { "${home}/Library/Fonts":
    ensure => directory,
    recurse => true,
    source => "puppet:///modules/habitullence/nvim/vim-powerline/fonts",
  }

  repository { "${nvim_config}/bundle/Vundle.vim":
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
