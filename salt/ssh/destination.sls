.install_package:
  cmd.run:
    - name: brew install openssl

.manage_private_key:
  file.managed:
    - name: {{ pillar.global.user.home_dir }}/.ssh/id_rsa
    - contents_pillar: ssh:private_key
    - mode: 600

.manage_public_key:
  file.managed:
    - name: {{ pillar.global.user.home_dir }}/.ssh/id_rsa.pub
    - contents_pillar: ssh:public_key
    - mode: 600
