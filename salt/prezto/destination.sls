include:
  - git

.install_package:
  cmd.run:
    - name: brew install zsh

.append_shell:
  file.append:
    - name: /etc/shells
    - text: /usr/local/bin/zsh
    - runas: root

.change_shell:
  cmd.run:
    - name: chsh -s $(which zsh) {{ opts.user }}
    - onlyif: 'test "$(dscl localhost -read /Local/Default/Users/{{ opts.user }} shell)" != "dsAttrTypeNative:shell: /bin/zsh"'
    - runas: root

.present_ssh_host:
  ssh_known_hosts.present:
    - name: github.com
    - user: {{ pillar.global.user.name }}

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
