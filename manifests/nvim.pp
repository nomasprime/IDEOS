class ideos::nvim($home) {
  homebrew::tap { 'neovim/neovim': }

  package {
    [
      'ctags',
      'neovim/neovim/neovim',
      'the_silver_searcher',
      'wget'
    ]:
  }

  include java
  include python

  package { 'neovim':
    provider => 'pip',
    require  => Class['python']
  }

  file { "${home}/.config":
    ensure => directory
  }

  $nvim_config = "${home}/.config/nvim"

  file { $nvim_config:
    ensure  => directory,
    recurse => true,
    require => File["${home}/.config"],
    source  => "puppet:///modules/ideos/nvim/config",
  }

  repository { "${nvim_config}/bundle/Vundle.vim":
    source => 'VundleVim/Vundle.vim'
  }

  exec { 'Clean Vundle bundles':
    command     => 'nvim +PluginClean! +qall',
    refreshonly => true,
    require     => [
      Repository["${nvim_config}/bundle/Vundle.vim"],
      File[$nvim_config]
    ],
    subscribe => [
      File[$nvim_config]
    ],
    timeout => 1800
  }

  exec { 'Install Vundle bundles':
    command     => 'nvim +PluginInstall +qall',
    refreshonly => true,
    require     => [
      Repository["${nvim_config}/bundle/Vundle.vim"],
      File[$nvim_config]
    ],
    subscribe => [
      File[$nvim_config]
    ],
    timeout => 1800
  }

  tidy { "${home}/.config/nvim/vundle/powerline.vim": }
  ->
  tidy { "${home}/.config/nvim/vundle/vim-powerline.vim": }
  ->
  tidy { "${home}/.config/nvim/vundle/vim-solarized-powerline.vim": }

  repository { "/tmp/fonts":
    source => 'powerline/fonts'
  }
  ->
  exec { 'Install Powerline fonts':
    command => '/tmp/fonts/install.sh',
    creates => "${home}/Library/Fonts/Menlo Regular for Powerline.ttf"
  }

  exec { 'Install YouCompleteMe':
    command => "${home}/.config/nvim/bundle/YouCompleteMe/install.py",
    creates => "${home}/.config/nvim/bundle/YouCompleteMe/third_party/ycmd/ycm_core.so",
    require => [
      Exec['Install Vundle bundles']
    ]
  }

  exec { 'Download Eclim installer':
    command => "wget http://sourceforge.net/projects/eclim/files/eclim/2.5.0/eclim_2.5.0.jar/download -O /tmp/eclim_2.5.0.jar",
    creates => "/tmp/eclim_2.5.0.jar",
    require => [
      Class['java'],
      Package['wget']
    ]
  }
  ->
  exec { 'Install Eclim':
    command => "java -Dvim.files=${home}/.config/nvim -Declipse.home=/Applications/Eclipse.app/Contents/Eclipse -jar /tmp/eclim_2.5.0.jar install",
    creates => "/Applications/Eclipse.app/Contents/Eclipse/eclimd"
  }
}
