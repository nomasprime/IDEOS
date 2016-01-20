class habitullence::nvim($home) {
  homebrew::tap { 'neovim/neovim': }

  package {
    [
      'ctags-exuberant',
      'the_silver_searcher',
      'neovim/neovim/neovim'
    ]:
  }

  file { "${home}/.config":
    ensure => directory
  }

  $nvim_config = "${home}/.config/nvim"

  file { $nvim_config:
    ensure  => directory,
    recurse => true,
    require => File["${home}/.config"],
    source  => "puppet:///modules/habitullence/nvim/config",
  }

  file { "${home}/Library/Fonts":
    ensure => directory,
    recurse => true,
    source => "puppet:///modules/habitullence/nvim/vim-powerline/fonts",
  }

  repository { "${nvim_config}/bundle/Vundle.vim":
    source => 'VundleVim/Vundle.vim',
  }

  exec { 'Install Vundle bundles':
    command => 'nvim +PluginInstall +qall',
    require => [
      Repository["${nvim_config}/bundle/Vundle.vim"],
      File[$nvim_config]
    ],
  }

  exec { 'Install YouCompleteMe':
    command => "${nvim_config}/bundle/YouCompleteMe/install.py",
    require => Exec['Install Vundle bundles']
  }
}
