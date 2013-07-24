class habitullence::powerline($home) {
  include python

  package { 'powerline':
    provider => pip,
    require => Class['python'],
    source => 'git+git://github.com/Lokaltog/powerline',
  }

  file { "${home}/.config":
    ensure => "directory",
  }

  file { "${home}/.config/powerline":
    recurse => true,
    require => [
      File["${home}/.config"],
      Package['powerline'],
    ],
    source => "puppet:///modules/habitullence/powerline/config_files",
  }

  file { "${home}/Library/Fonts":
    recurse => true,
    source => "puppet:///modules/habitullence/powerline/fonts",
  }
}
