class ideos::nvim($home) {
  homebrew::tap { 'neovim/neovim': }

  package {
    [
      'ctags',
      'the_silver_searcher',
      'wget'
    ]:
  }

  package { 'neovim/neovim/neovim':
    install_options => [
      '--HEAD'
    ]
  }

  include java
  include python

  package { 'neovim':
    ensure   => '0.1.9',
    provider => 'pip',
    require  => Class['python']
  }

  file { "${home}/.config":
    ensure  => directory
  }

  $nvim_config = "${home}/.config/nvim"

  file { $nvim_config:
    ensure  => directory,
    recurse => true,
    require => File["${home}/.config"],
    source  => "puppet:///modules/ideos/nvim/config/nvim",
  }

  exec { 'Download vim-plug':
    command => 'curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim',
    creates => "${home}/.config/nvim/autoload/plug.vim"
  }

  exec { 'Install vim-plug plugins':
    command     => 'nvim +PlugClean +qall && nvim +PlugInstall +qall',
    refreshonly => true,
    require     => [
      Exec['Download vim-plug'],
      File[$nvim_config]
    ],
    subscribe => [
      File[$nvim_config]
    ],
    timeout => 1800
  }

  repository { "/tmp/fonts":
    source => 'powerline/fonts'
  }
  ->
  exec { 'Install Powerline fonts':
    command => '/tmp/fonts/install.sh',
    creates => "${home}/Library/Fonts/Meslo LG S DZ Regular for Powerline.otf"
  }

  exec { 'Install YouCompleteMe':
    command => "${home}/.config/nvim/plugged/YouCompleteMe/install.py",
    creates => "${home}/.config/nvim/plugged/YouCompleteMe/third_party/ycmd/ycm_core.so",
    require => [
      Exec['Install vim-plug plugins']
    ]
  }

  ruby_gem { 'neovim':
    gem          => 'neovim',
    ruby_version => '*'
  }

  ruby_gem { 'rubocop':
    gem          => 'rubocop',
    ruby_version => '*'
  }
}
