.install_packages:
  pkg.installed:
    - pkgs:
      - fzf
      - the_silver_searcher

.append_colours_to_bashrc:
  file.append:
    - name: {{ pillar.global.user.home_dir }}/.bashrc
    - source: salt://fzf/files/colourscheme

.append_colours_to_zshrc:
  file.append:
    - name: {{ pillar.global.user.home_dir }}/.zshrc
    - source: salt://fzf/files/colourscheme

.append_config_to_bashrc:
  file.append:
    - name: {{ pillar.global.user.home_dir }}/.bashrc
    - text: "\n[ -f ~/.fzf.bash ] && source ~/.fzf.bash"
    - require:
      - file: .append_colours_to_bashrc

.append_config_to_zshrc:
  file.append:
    - name: {{ pillar.global.user.home_dir }}/.zshrc
    - text: "\n[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh"
    - require:
      - file: .append_colours_to_zshrc

.manage_bash:
  file.managed:
    - name: {{ pillar.global.user.home_dir }}/.fzf.bash
    - source: salt://fzf/files/.fzf.bash

.manage_zsh:
  file.managed:
    - name: {{ pillar.global.user.home_dir }}/.fzf.zsh
    - source: salt://fzf/files/.fzf.zsh
