.hide_menu_bar:
  cmd.run:
    - name: defaults write NSGlobalDomain _HIHideMenuBar -int {{ pillar['osx']['general']['hide_menu_bar'] }}
    - unless: test $(defaults read NSGlobalDomain _HIHideMenuBar) = {{ pillar['osx']['general']['hide_menu_bar'] }}

.show_scroll_bars:
  cmd.run:
    - name: defaults write NSGlobalDomain AppleShowScrollBars -string {{ pillar['osx']['general']['show_scroll_bars'] }}
    - unless: test $(defaults read NSGlobalDomain AppleShowScrollBars) = {{ pillar['osx']['general']['show_scroll_bars'] }}
