include:
  - vagrant

.manage_vagrantfile:
  file.managed:
    - makedirs: True
    - name: {{ pillar.pwd }}/{{ pillar.global.build_dir }}/dvm/Vagrantfile
    - source: salt://dvm/files/Vagrantfile
    - template: jinja

.manage_bootstrap:
  file.managed:
    - makedirs: True
    - name: {{ pillar.pwd }}/{{ pillar.global.build_dir }}/dvm/bin/bootstrap
    - source: salt://dvm/files/bin/bootstrap
    - template: jinja

.manage_minion:
  file.managed:
    - makedirs: True
    - name: {{ pillar.pwd }}/{{ pillar.global.build_dir }}/dvm/etc/minion
    - source: salt://dvm/files/etc/minion
    - template: jinja

.manage_bin:
  file.managed:
    - mode: 744
    - name: /usr/local/bin/dvm
    - source: salt://dvm/files/bin/dvm
    - template: jinja
