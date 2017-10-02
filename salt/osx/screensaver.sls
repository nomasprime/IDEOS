.ask_for_password:
  cmd.run:
    - name: defaults write com.apple.screensaver askForPassword {{ pillar.osx.screensaver.ask_for_password }}
    - unless: test $(defaults read com.apple.screensaver askForPassword) = {{ pillar.osx.screensaver.ask_for_password }}

.ask_for_password_delay:
  cmd.run:
    - name: defaults write com.apple.screensaver askForPasswordDelay {{ pillar.osx.screensaver.ask_for_password_delay }}
    - unless: test $(defaults read com.apple.screensaver askForPasswordDelay) = {{ pillar.osx.screensaver.ask_for_password_delay }}

.idle_time:
  cmd.run:
    - name: defaults -currentHost write com.apple.screensaver idleTime {{ pillar.osx.screensaver.idle_time }}
    - unless: test $(defaults -currentHost read com.apple.screensaver idleTime) = {{ pillar.osx.screensaver.idle_time }}
