.autohide:
  cmd.run:
    - name: defaults write com.apple.dock autohide -int {{ pillar.osx.dock.autohide }}; killall Dock
    - unless: test $(defaults read com.apple.dock autohide) = {{ pillar.osx.dock.autohide }}

.icon_size:
  cmd.run:
    - name: defaults write com.apple.dock tilesize -int {{ pillar.osx.dock.icon_size }}; killall Dock
    - unless: test $(defaults read com.apple.dock tilesize) = {{ pillar.osx.dock.icon_size }}

.icon_size_magnified:
  cmd.run:
    - name: defaults write com.apple.dock largesize -int {{ pillar.osx.dock.icon_size_magnified}}; killall Dock
    - unless: test $(defaults read com.apple.dock largesize) = {{ pillar.osx.dock.icon_size_magnified }}

.magnification:
  cmd.run:
    - name: defaults write com.apple.dock magnification -int {{ pillar.osx.dock.magnification }}; killall Dock
    - unless: test $(defaults read com.apple.dock magnification) = {{ pillar.osx.dock.magnification }}

.show_process_indicators:
  cmd.run:
    - name: defaults write com.apple.dock show-process-indicators -int {{ pillar.osx.dock.show_process_indicators }}; killall Dock
    - unless: test $(defaults read com.apple.dock show-process-indicators) = {{ pillar.osx.dock.show_process_indicators }}

.static_only:
  cmd.run:
    - name: defaults write com.apple.dock static-only -int {{ pillar.osx.dock.static_only }}; killall Dock
    - unless: test $(defaults read com.apple.dock static-only) = {{ pillar.osx.dock.static_only }}

.tile_size:
  cmd.run:
    - name: defaults write com.apple.dock tilesize -int {{ pillar.osx.dock.tile_size }}; killall Dock
    - unless: test $(defaults read com.apple.dock tilesize) = {{ pillar.osx.dock.tile_size }}
