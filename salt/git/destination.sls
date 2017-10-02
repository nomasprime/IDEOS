include:
  - ssh

.install_package:
  cmd.run:
    - name: brew install git
    - require:
      - sls: ssh

.manage_config:
  file.managed:
    - name: {{ pillar.global.user.home_dir }}/.gitconfig
    - source: salt://git/files/.gitconfig
    - template: jinja

.manage_ignore:
  file.managed:
    - name: {{ pillar.global.user.home_dir }}/.gitignore
    - source: salt://git/files/.gitignore
    - template: jinja
