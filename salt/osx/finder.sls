.desktop_icon_size:
  cmd.run:
    - name: plutil -replace DesktopViewSettings.IconViewSettings.iconSize -integer {{ pillar.osx.finder.desktop.icon_size }} {{ pillar.global.user.home_dir }}/Library/Preferences/com.apple.finder.plist; killall Finder
    - unless: test $(/usr/libexec/PlistBuddy -c "print :DesktopViewSettings:IconViewSettings:iconSize" {{ pillar.global.user.home_dir }}/Library/Preferences/com.apple.finder.plist) = {{ pillar.osx.finder.desktop.icon_size }}
