include:
  - git

.change_shell:
  cmd.run:
    - name: chsh -s /bin/zsh
    - onlyif: 'test "$(dscl localhost -read /Local/Default/Users/nomasprime shell)" != "dsAttrTypeNative:shell: /bin/zsh"'

.clone_repository:
  cmd.run:
    - name: git clone --recursive git@github.com:{{ pillar.global.user.name }}/prezto.git {{ pillar.global.user.home_dir
    }}/.zprezto
    - creates: {{ pillar.global.user.home_dir }}/.zprezto
    - require:
      - sls: git

.symlink_runcoms:
  cmd.script:
    - source: salt://prezto/files/config
    - creates:
      - {{ pillar.global.user.home_dir }}/.zlogin
      - {{ pillar.global.user.home_dir }}/.zlogout
      - {{ pillar.global.user.home_dir }}/.zpreztorc
      - {{ pillar.global.user.home_dir }}/.zprofile
      - {{ pillar.global.user.home_dir }}/.zshenv
      - {{ pillar.global.user.home_dir }}/.zshrc
