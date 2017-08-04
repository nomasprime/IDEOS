include:
  - git

.change_shell:
  cmd.run:
    - name: chsh -s /bin/zsh
    - onlyif: 'test "$(dscl localhost -read /Local/Default/Users/nomasprime shell)" != "dsAttrTypeNative:shell: /bin/zsh"'

.clone_repository:
  cmd.run:
    - name: git clone --recursive git@github.com:{{ pillar.global.user.name }}/prezto.git {{ pillar.global.user.home
    }}/.zprezto
    - creates: {{ pillar.global.user.home }}/.zprezto
    - require:
      - sls: git

.symlink_runcoms:
  cmd.script:
    - source: salt://prezto/files/config
    - creates:
      - {{ pillar.global.user.home }}/.zlogin
      - {{ pillar.global.user.home }}/.zlogout
      - {{ pillar.global.user.home }}/.zpreztorc
      - {{ pillar.global.user.home }}/.zprofile
      - {{ pillar.global.user.home }}/.zshenv
      - {{ pillar.global.user.home }}/.zshrc
