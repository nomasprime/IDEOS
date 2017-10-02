include:
  - git

.clone_repository:
  cmd.run:
    - name: git clone git@github.com:chriskempson/base16-shell.git {{ pillar.global.user.home_dir }}/.config/base16-shell
    - creates: {{ pillar.global.user.home_dir }}/.config/base16-shell
    - require:
      - sls: git

.append_rc:
  file.blockreplace:
    - append_if_not_found: True
    - name: {{ pillar.global.user.home_dir }}/.zshrc
    - marker_start: "# START managed block base16-shell.theme.rc"
    - marker_end: "# END managed block base16-shell.theme.rc"
    - source: salt://base16-shell/files/rc
    - template: jinja
