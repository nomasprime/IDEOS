.install_package:
  pkg.installed:
    - name: exercism

.configure_key:
  cmd.run:
    - name: exercism configure --key={{ pillar.exercism.key }}
    - creates: {{ pillar.global.user.home }}/.exercism.json
