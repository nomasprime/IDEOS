{% set home_root_dir = salt["grains.filter_by"]({
"MacOS": "/Users",
"Debian": "/home",
}) %}
global:
  build_dir: .ideos
  editor: nvim
  modes:
    source:
      lib_dir: {{ home_root_dir }}/{{ opts.user }}/Library
  user:
    home_dir: {{ home_root_dir }}/{{ opts.user }}
    name: {{ opts.user }}
