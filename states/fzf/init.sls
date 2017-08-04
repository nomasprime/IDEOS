.install_package:
  pkg.installed:
    - name: fzf

.append_colours_to_bashrc:
  file.append:
    - name: {{ pillar.global.user.home }}/.bashrc
    - source: salt://fzf/files/colourscheme

.append_colours_to_zshrc:
  file.append:
    - name: {{ pillar.global.user.home }}/.zshrc
    - source: salt://fzf/files/colourscheme

.append_config_to_bashrc:
  file.append:
    - name: {{ pillar.global.user.home }}/.bashrc
    - text: "\n[ -f ~/.fzf.bash ] && source ~/.fzf.bash"
    - require:
      - file: .append_colours_to_bashrc

.append_config_to_zshrc:
  file.append:
    - name: {{ pillar.global.user.home }}/.zshrc
    - text: "\n[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh"
    - require:
      - file: .append_colours_to_zshrc

.manage_bash:
  file.managed:
    - name: {{ pillar.global.user.home }}/.fzf.bash
    - source: salt://fzf/files/.fzf.bash
    - user: {{ pillar.global.user.name }}

.manage_zsh:
  file.managed:
    - name: {{ pillar.global.user.home }}/.fzf.zsh
    - source: salt://fzf/files/.fzf.zsh
    - user: {{ pillar.global.user.name }}
