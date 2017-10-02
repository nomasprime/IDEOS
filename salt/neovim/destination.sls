include:
  - base16-shell
  - fzf
  - python

.install_package:
  pkg.installed:
    - name: neovim
    - options:
      - '--HEAD'

.recurse_config:
  file.recurse:
    - name: {{ pillar.global.user.home_dir }}/.config/nvim
    - source: salt://neovim/files
    - user: {{ pillar.global.user.name }}
    - require:
      - sls: base16-shell
      - sls: fzf

.download_vim_plug:
  cmd.run:
    - name: 'curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    - creates: {{ pillar.global.user.home_dir }}/.config/nvim/autoload/plug.vim

.install_python_pip:
  pip.installed:
    - name: neovim
    - require:
      - sls: python

.install_vim_plug_plugins:
  cmd.run:
    - name: nvim +PlugClean +y +qall && nvim +PlugInstall +qall
    - onchanges:
      - file: {{ pillar.global.user.home_dir }}/.config/nvim
    - require:
      - pkg: .install_package
