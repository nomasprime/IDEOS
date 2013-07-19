class habitullence::iterm2($home) {
  include iterm2::dev

  file { "${home}/Library/Preferences/com.googlecode.iterm2.plist":
    source => "puppet:///modules/habitullence/iterm2/com.googlecode.iterm2.plist",
  }
}
