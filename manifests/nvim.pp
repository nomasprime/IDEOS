class habitullence::nvim($home) {
  homebrew::tap { 'neovim/neovim': }

  package {
    [
      'ctags-exuberant',
      'neovim/neovim/neovim',
      'wget'
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

  exec { 'Download Eclim installer':
    command => "wget http://sourceforge.net/projects/eclim/files/eclim/2.5.0/eclim_2.5.0.jar/download -O /tmp/eclim_2.5.0.jar",
    creates => "/tmp/eclim_2.5.0.jar",
    require => Package['wget']
  }
  ->
  exec { 'Install Eclim':
    command => "java -Dvim.files=${home}/.config/nvim -Declipse.home=/Applications/Eclipse.app/Contents/Eclipse -jar /tmp/eclim_2.5.0.jar install",
    creates => "${home}/eclipse/java-mars/Eclipse.app/Contents/Eclipse/MacOS/eclimd"
  }
}
